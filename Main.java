public class Main {				// Main class
	  public static void main(String[] args) {
      QueueCheck QC = new QueueCheck();
      Producer p1 = new Producer(QC, (int) (Math.random() * 10)); //Producer thread 1
      Producer p2 = new Producer(QC, (int) (Math.random() * 10)); //Producer thread 2
      Producer p3 = new Producer(QC, (int) (Math.random() * 10)); //Producer thread 3
      Consumer c1 = new Consumer(QC, (int) (Math.random() * 10)); //Consumer thread 1
      Consumer c2 = new Consumer(QC, (int) (Math.random() * 10)); //Consumer thread 2
      Consumer c3 = new Consumer(QC, (int) (Math.random() * 10)); //Consumer thread 3
      p1.start();				// Starting of new producer thread
      c1.start();				// Starting of new consumer thread
      p2.start();				// Starting of new producer thread
      c2.start();				// Starting of new consumer thread
      p3.start();				// Starting of new producer thread
      c3.start();				// Starting of new consumer thread
   }
}

class QueueCheck {
	   private int data;
	   private boolean emptyCheck = false;  			// Queue empty check
	   public synchronized int consume() { 				// Consumer consume function
	      while (emptyCheck == false) {
	         try {
	            wait();
	            System.out.println("Queue Empty!!! No data..");					// If queue is empty!!
	         }
	         catch (InterruptedException e) {
	         }
	      }
	      emptyCheck = false;
	      notifyAll();											//Evoke all other threads.
	      return data;
	   }

		public synchronized void produce(int value) {						// Producer produce function
		      while (emptyCheck == true) {
		         try {
		            wait();
		            System.out.println("Queue full!! Wait..");				// If queue is full!!
		         }
		         catch (InterruptedException e) { 
		         } 
		      }
		      data = value;							
		      emptyCheck = true;
		      notifyAll();										//Evoke all other threads.
		   }
}

class Producer extends Thread {					
	private QueueCheck QueueCheck;						// Object of the check queue function for checking queue
	private int number;
	int x = (int) (Math.random() * 100);					// Generates any random number data for producer to produce
	public Producer(QueueCheck QC, int number) {			//Producer function
			QueueCheck = QC;
			this.number = number;					// PID of the producer exchanging
	}
	public void run() {								
			QueueCheck.produce((int) x);					// Producing new element
			System.out.println("Producer" + this.number + " produced " + x);
			try {
				sleep((int)(Math.random() * 100));				//Producer goes to sleep for random seconds halts the process.
			} catch (InterruptedException e) { }
		}
}

class Consumer extends Thread {
	   private QueueCheck QueueCheck;				// Object of the check queue function for checking queue
	   private int number;
	   public Consumer(QueueCheck QC, int number) {			//Consumer function
	      QueueCheck = QC;
	      this.number = number;						// PID of the consumer exchanging
	   }
	   public void run() {
	      int value = 0;  
	            value = QueueCheck.consume();				// Consuming the first element of the queue
	            System.out.println("Consumer" + this.number + " consumed " + value);
	}
}
