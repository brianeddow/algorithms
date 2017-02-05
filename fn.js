var reverse = function(arr) {
	var i;
	var mid = Math.floor(arr.length/2);

	for(i=0;i<mid;i++) {
		var tmp = arr[i];
		arr[i] = arr[arr.length-1-i];
		arr[arr.length-1-i] = tmp;
	}

	return arr;
}

// console.log(reverse([3,4,5,1,6,2]));

function Person(name,age,occup) {
	this.name = name;
	this.age = age;
	this.occupation = occup;

	this.introduce = function() {
		console.log("My name is " + this.name + ", I am " + this.age + " and a " + this.occupation);
		return this;
	}
}

var Brian = new Person('Brian', 29, 'Web Developer');

// console.log(Brian);

Person.prototype.play = function() {
	console.log("I am playing guitar!");
	return this;
}

// Brian.introduce().play();

function binSearch(arr,item,min,max) {
	var min = min ? min : 0;
	var max = max ? max : arr.length-1;
	var mid = Math.floor((min + max)/2);

	if(min > max) { return false; }
	if(arr[min] == item) { return arr[min]; }
	if(arr[max] == item) { return arr[max]; }

	while(min < max) {
		if(item < arr[mid]) {
			return binSearch(arr,item,min,mid-1);
		}
		if(item > arr[mid]) {
			return binSearch(arr,item,mid+1,max);
		}
		if(item === arr[mid]) {
			return arr[mid];
		}
	}

	return false;
}

var arr = [1,2,3,4,5,6,7,8,9];

// console.log(binSearch(arr,7,0,arr.length-1));

function anagrams(s1,s2)
{
	if(s1.length != s2.length)
	{
		return false;
	}

	var s1 = s1.replace(" ", "").toLowerCase();
	var s2 = s2.replace(" ", "").toLowerCase();

	var count = {};

	for(var i=0; i<s1.length; i++)
	{
		if(count[s1[i]])
		{
			count[s1[i]] += 1;
		}
		else
		{
			count[s1[i]] = 1;
		}
	}

	for(var j=0; j<s2.length; j++)
	{
		if(count[s2[j]])
		{
			count[s2[j]] -= 1;
		}
		else
		{
			count[s2[j]] = 1;
		}
	}

	for(key in count)
	{
		if(count[key] != 0)
		{
			return false;
		}
	}

	return true;
}

// console.log(anagrams('oldwest action','clint eastwood'));

function Node(val) {
	this.val = val;
	this.prev = null;
	this.next = null;
}

function DLL() {
	this.head = null;

	this.append = function(val) {
		if(this.head === null) {
			this.head = new Node(val);
		} else {
			var current = this.head;
			while(current.next) {
				current = current.next;
			}
			var new_node = new Node(val);
			current.next = new_node;
			new_node.prev = current;
		}
		return this;
	}

	this.nodes = function() {
		var current = this.head;
		console.log()
		while(current) {
			console.log(current.val);
			current = current.next;
		}
	}

	this.has = function(val) {
		var current = this.head;
		while(current) {
			if(current.val != val) {
				current = current.next;
			} else {
				console.log(true,current.val);
				break;
			}
			console.log(false);
			break;
		}
		return this;
	}

	this.insert = function(at,val) {
		var current = this.head;
		while(current.next) {
			if(current.next.val != at) {
				current = current.next;
			} else {
				var tmp = current.next;
				current.next =  new Node(val);
				current.next.next = tmp;
				break;
			}
		}
		return this;
	}

	this.remove = function(val) {
		var current = this.head;
		while(current) {
			if(current.next.val != val) {
				current = current.next;
			} else {
				current.next = current.next.next;
				current.next.prev = current;
				break;
			}
		}
		return this;
	}

	this.pop = function() {
		var current = this.head;
		while(current.next.next != null) {
			current = current.next;
		}
		current.next = null;
		return this;
	}
}

var list = new DLL();
// list.append(1).append(2).append(3).insert(3,2.5).append(4).insert(4,3.5).remove(2.5).remove(3.5).nodes();

function Node(val) {
	this.val = val;
	this.prev = null;
	this.next = null;
}

function DoublyLinkedList() {
	this.head = null;

	this.append = function(val) {
		if(this.head == null) {
			this.head = new Node(val);
		} else {
			var current = this.head;
			while(current.next) {
				current = current.next;
			}
			current.next = new Node(val);
			current.next.prev = current;
		}
		return this;
	}

	this.nodes = function() {
		var current = this.head;
		while(current) {
			if(current.val != null) {
				console.log(current.val);
				current = current.next;
			}
		}
	}

	this.pop = function() {
		var current = this.head;
		while(current.next.next != null) {
			current = current.next;
		}
		current.next = null;
		return this;
	}

	this.shift = function() {
		if(this.head) {
			this.head = this.head.next;
			this.head.next.prev = null;
		}
		return this;
	}

	this.unshift = function(val) {
		var node = new Node(val);
		var tmp = this.head;
		this.head = node;
		this.head.next = tmp;
		tmp.prev = node;
		return this;
	}

	this.remove = function(val) {
		var current = this.head;
		while(current.next.val != val) {
			current = current.next;
		}
		var tmp = current.next.next;
		current.next = tmp;
		tmp.prev = current;
		return this;
	}

	this.insert = function(at,val) {
		var current = this.head;
		while(current.val != at) {
			current = current.next;
		}
		var tmp = current.next;
		var node = new Node(val);
		node.next = tmp;
		tmp.prev = node;
		current.next = node;
		node.prev = current;
		return this;
	}
}

var List = new DoublyLinkedList();
// List.append(1).append(2).append(3).append(4).insert(2,2.75).append(5).insert(4,4.35).remove(2.75).remove(4.35).unshift(0).nodes();
