
public class IntList implements MyList{
	private IntList next;
	private int data;
	public IntList (int i){
		next  = null;
		data = i;
	}
	public IntList(IntList n, int data){
		next = n;
		this.data = data;
	}
	public int getData(){
		return data;
	}
	public IntList next(){
		return next;
	}
	public void printNode(){
		System.out.println("IntList Node,data is: "+getData());
	}
}
