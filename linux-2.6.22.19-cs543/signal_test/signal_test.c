#include <linux/linkage.h>
#include <asm/uaccess.h>
#include <linux/mutex.h>
#include <linux/sched.h>
#include <asm/semaphore.h>
#include <linux/delay.h>

asmlinkage long sys_my_receive_mail(pid_t receiver, pid_t sender, char __user *buf){
	struct task_struct *task;
	rcu_read_lock();
	task = find_task_by_pid_type(PIDTYPE_PID, receiver);
	rcu_read_unlock();
	int receive_any = 0;

	if(task == NULL){
		printk("PID doesn't exist. Something went wrong\n");
		return -1;
	}

	if(sender < 0){
		receive_any = 1;
	}

	struct my_mailbox *head;
	struct my_mailbox h;

	/*
	// Block if no messages yet
	while(task->mailbox == NULL){
		msleep(10);
	}
*/
	head = task->mailbox;
	char temp_buf[strlen_user(buf)];

	//rcu_read_lock();
	while(head != NULL){
		h = *head;
		if(receive_any == 1){
			copy_to_user(buf, h.msg, strlen(h.msg) + 1);
			//up(&(head->my_sem));
			return strlen(h.msg) + 1;
		}
		else{
			if(head->sender == sender){
				copy_to_user(buf, h.msg, strlen(h.msg) + 1);
				//up(&head->my_sem);
				return strlen(head->msg) + 1;
			}
		}
		head = head->next;
	}
	//rcu_read_unlock();

	return -1;

}

asmlinkage long sys_my_send_mail(pid_t target, pid_t sender, char __user *buf, int len){
	struct task_struct *task;
	struct my_mailbox mb;
	struct my_mailbox *mb_pointer;

	mb_pointer  = &mb;
	struct semaphore curr_sem;

	sema_init(&curr_sem, 0);
	
	mb.my_sem = curr_sem;
	mb.sender = sender;
	mb.len = len;

	if(len > 200){
		return -1;
	}
	copy_from_user(mb.msg, buf, strlen_user(buf));

		
	rcu_read_lock();
	task = find_task_by_pid_type(PIDTYPE_PID, target);
	rcu_read_unlock();

	if(task == NULL){
		printk("No such pid\n");
		return -1;
	}
	//rcu_read_lock();
	if(task->mailbox == NULL){
		task->mailbox = mb_pointer;
	}
	if(task->mailbox != NULL){
		struct my_mailbox *curr_mb;
		curr_mb = task->mailbox;
		
		while(curr_mb->next != NULL){
			curr_mb = curr_mb->next;
		}
		curr_mb->next = mb_pointer;
	}

	//rcu_read_unlock();
/*
	if(down_interruptible(&(mb_pointer->my_sem))){
		printk("Sender is blocking\n");
	}
	else{
		printk("Sender has released!\n");
	}
*/	
	return 0;
}
