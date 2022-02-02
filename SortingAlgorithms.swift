//
//  SortingAlgorithms.swift
//  SortingAlgorithmsTests
//
//  Created by Jay Junior  on 02.02.22.
//


struct SortingAlgorithms {

    func insertion_sort(_ array: [Int]) -> [Int]{
    if array.count < 2 {return array;}
    var arr = array;
    for i in 1...arr.count - 1{
        var rightPointer = i;
        var leftPointer = i - 1;
        while(leftPointer >= 0 && arr[rightPointer] < arr[leftPointer]){
            let temp = arr[leftPointer];
            arr[leftPointer] = arr[rightPointer];
            arr[rightPointer] = temp;
            rightPointer-=1;
            leftPointer-=1;
        }
    }
    return arr;
}

func merge_sort(_ array: [Int]) -> [Int]{

    if(array.count < 2){
        return array;
    }
    let left_array = merge_sort(Array(array[0..<array.count/2]));
    let right_array = merge_sort(Array(array[array.count/2..<array.count]));

    var i = 0;
    var j = 0;
    var result: [Int] = [];

    while ( i < left_array.count && j < right_array.count){
        if(left_array[i] <= right_array[j]){
            result.append(left_array[i]);
            i+=1;
        }else{
            result.append(right_array[j]);
            j+=1;
        }
    }

    while(i < left_array.count){
        result.append(left_array[i]);
        i+=1;
    }
    while(j < right_array.count){
        result.append(right_array[j]);
        j+=1;
    }

    return result;
    
}

func selection_sort(_ array: [Int]) -> [Int]{
        
    func find_min_index(_ array: [Int], _ start_index : Int) -> Int{
        var min = array[start_index];
        var min_index = start_index;
        for i in start_index+1..<array.count{
            if array[i] < min {
                min = array[i];
                min_index = i;
                
            }
        }
        return min_index;
    }

    if array.count < 2 {return array;}
    var arr = array;
    for i in 0..<arr.count-1{
        let min_index = find_min_index(arr,i);
        arr.swapAt(i, min_index);

    }
    return arr;
}

func bubble_sort( _ array :[Int]) -> [Int]{
    var arr = array;
    var swapped = false;
    repeat{
        swapped = false;
        for y in 0..<arr.count-1{
            if arr[y] > arr[y+1]{
                let temp = arr[y+1];
                arr[y+1] = arr[y];
                arr[y] = temp;
                swapped = true;
            }
            
        }
    }while(swapped)

    return arr;

}

func quick_sort(_ array: [Int]) -> [Int]{
    var arr = array;
    func partition(_ array: [Int],_ low: Int , _ high : Int) -> Int{
        let pivot = arr[high];
        var i = (low - 1);
        
        for j in low...high-1{
            if(arr[j] < pivot){
                i+=1;
                arr.swapAt(i,j);
            }
        }
        arr.swapAt(i+1,high);
        return i+1;
    }

    func sort(_ array: [Int],_ low : Int, _ high : Int){
        if (low < high){
            let pivot = partition(arr,low,high);

            sort(arr,low,pivot-1);
            sort(arr,pivot+1,high);
        }

    }

    sort(arr,0,arr.count-1);

    return arr;
    
}


func heap_sort(_ array: [Int]) -> [Int]{
    if(array.count < 2){return array;}
    // heapify
    var arr = array;
    func heapify(_ array:[Int],_ size : Int , _ i: Int) {
        var root = i;
        let left = 2 * i + 1;
        let right = 2 * i + 2;
        if(left < size && arr[left] > arr[root]){
            root = left;
        }
        if(right < size && arr[right] > arr[root]){
            root = right;
        }
        if(root != i){
            arr.swapAt(i,root);
            heapify(arr,size,root);
        }
  
    }
    

    for i in stride(from: array.count/2-1, through: 0 , by: -1){
        arr.swapAt(i,0);
        heapify(arr,array.count,i);
    }
    for i in stride(from : array.count-1,to: 0,by: -1){
        arr.swapAt(0,i);
        heapify(arr,i,0)
    }

    return arr

    }
}

