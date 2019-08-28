#include <linux/linkage.h>
#include <asm/uaccess.h>
#include <linux/sched.h>

asmlinkage long sys_mysend(pid_t target, pid_t sender, int n, char __user *buf)
{
	struct task_struct *t;
	struct my_mailbox *mb;
	t = find_task_by_pid_type(PIDTYPE_PID, target);
	if (t==NULL) {
		printk("no such pid\n");
	}

	t->mb = mb;
	waitpid()
	int l1;
	l1 = t->mailbox->len;
	return l1;
}
