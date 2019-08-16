#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <asm/siginfo.h>    //siginfo
#include <linux/rcupdate.h>    //rcu_read_lock
#include <linux/sched.h>    //find_task_by_pid_type
#include <linux/debugfs.h>
#include <linux/uaccess.h>


#define SIG_TEST 44

struct dentry *file;

static ssize_t write_pid(struct file *file, const char __user *buf, size_t count, loff_t *ppos){
	char mybuf[10];
	int pid = 0;
	int ret;
	struct siginfo info;
	struct task_struct *t;

	if(count > 10){
		return -EINVAL;
	}
	copy_from_user(mybuf, buf, count);
	sscanf(mybuf, "%d", &pid);
	printk("pid  = %d\n", pid);

	memset(&info, 0, sizeof(struct siginfo));
	info.si_signo = SIG_TEST;
	info.si_code = SI_QUEUE;
	info.si_int = 1234;

	rcu_read_lock();
	t = find_task_by_pid_type(PIDTYPE_PID, pid);
	if(t == NULL){
		printk("no such pid\n");
		rcu_read_unlock();
		return -ENODEV;
	}
	rcu_read_unlock();
	ret = send_sig_info(SIG_TEST, &info, t);

	if(ret < 0){
		printk("error sending signal\n");
		return ret;
	}
	return count;

}

static const struct file_operations my_fops = {
	.write = write_pid,
};

static int __init signalexample_module_init(void){
	file = debugfs_create_file("signalconfpid", 0200, NULL, NULL, &my_fops);
	return 0;
}

static int __exit signalexample_module_exit(void){
	debugfs_remove(file);
}

module_init(signalexample_module_init);
MODULE_LICENSE("GPL");
