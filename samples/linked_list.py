from typing import List

class SinglyLinkedListNode:
    def __init__(self, head: int):
        self.head = head
        self.next = None


    def __str__(self):
        if self.next is None:
            S = ''
        else:
            S = ', ' + str(self.next)

        return str(self.head) + S


    def insertAtHead(self, num: int):
        linkedList = SinglyLinkedListNode(num)
        linkedList.next = self

        return linkedList


    def insertAtTail(self, num: int):
        if self.next is None:
            self.next = SinglyLinkedListNode(num)
        else:
            self.next = self.next.insertAtTail(num)

        return self


    def reverse(self):
        prevLoc = None
        loc = self

        while loc is not None:
            x = loc.next
            loc.next = prevLoc
            prevLoc = loc
            loc = x

        self = prevLoc
        return self



class DoublyLinkedListNode:
    def __init__(self, head: int):
        self.head = head
        self.next = None
        self.prev = None


    def __str__(self):
        if self.next is None:
            S = ''
        else:
            S = ', ' + str(self.next)

        return str(self.head) + S


    def insertAtHead(self, num: int):
        linkedList = DoublyLinkedListNode(num)
        linkedList.next = self

        return linkedList


    def insertAtTail(self, num: int):
        if self.next is None:
            self.next = DoublyLinkedListNode(num)
        else:
            self.next = self.next.insertAtTail(num)

        return self


    def reverse(self):
        loc = self
        prevLoc = None

        while loc is not None:
            x = loc.next
            loc.next = prevLoc
            loc.prev = x
            prevLoc = loc
            loc = x

        self = prevLoc
        return self



def buildSinglyLinkedListFromList(nums: List[int]):
    linkedList = None

    for x in reversed(nums):
        if linkedList is None:
            linkedList = SinglyLinkedListNode(x)
        else:
            linkedList = linkedList.insertAtHead(x)

    return linkedList



def buildDoublyLinkedListFromList(nums: List[int]):
    linkedList = None

    for x in reversed(nums):
        if linkedList is None:
            linkedList = DoublyLinkedListNode(x)
        else:
            linkedList = linkedList.insertAtHead(x)

    return linkedList
