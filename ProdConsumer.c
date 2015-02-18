#include<stdio.h>
#include<stdlib.h>

int im;
int queue[2]={0};
int S=1;
void main()
{
	int ichoice;
	void Prod();
	void Cons();
	void enqueue(int);
	void dequeue();
	void SemSignal();
	void SemWait();
	void StatusQueue();
	while(1)
	{
		printf("\n1. Produce item:");
		printf("\n2. Consume item:");
		printf("\n3. Know queue status");
		printf("\nEnter your choice:");
		scanf("%d", &ichoice);
		switch(ichoice)
		{
			case 1:
				Prod();
				break;
			case 2:
				Cons();
				break;
			case 3:
				if(im==1)
				printf("\nQueue is full!");
				else
				printf("\nQueue is empty");
		}
	}	
}

void SemWait()
{
	S--;
}

void SemSignal()
{
	S++;
}
void dequeue()
{
	queue[0]=queue[1];
	queue[1]=0;	
}
void enqueue(int temp1)
{
	int temp=0,i;
	for(i=0;i<2;i++)
	{
		if(queue[i]==0)
		{
			temp=1;
			queue[i]=temp1;
			break;
		}
	}	
}

void Prod()
{
	SemWait();
	if(im==0) {
		im=1;
		printf("\n Produced one item...");
	}
	else if(im==1)
	printf("\nQueue is full!\n"); 
	SemSignal();
}
void Cons()
{
	int i,a=0;
	SemWait();
	if(im==1)
	{
		if(queue[0]==0 || queue[0]==1 )
		{
			im=0;
			dequeue();
			printf("\nConsumed one item...");
		}
		else
		enqueue(1);
	}	
	else
	enqueue(1);
	SemSignal();
}
