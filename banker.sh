#!/bin/bash

# P0, P1, P2, P3, P4 are the Process names here

n=5                      # Number of processes
m=3                      # Number of resources
alloc=(                  # Allocation Matrix
    0 1 0
    2 0 0
    3 0 2
    2 1 1
    0 0 2
)
max=(                    # MAX Matrix
    7 5 3
    3 2 2
    9 0 2
    2 2 2
    4 3 3
)
avail=(3 3 2)            # Available Resources

f=()                     # Initialize f as an empty array
ans=()                   # Initialize ans as an empty array
ind=0                    # Initialize ind to 0
for (( k=0; k<n; k++ )); do
    f+=("0")
done

need=()
for (( i=0; i<n; i++ )); do
    for (( j=0; j<m; j++ )); do
        need[$i,$j]=$((${max[$i,$j]} - ${alloc[$i,$j]}))
    done
done

y=0
for (( k=0; k<5; k++ )); do
    for (( i=0; i<n; i++ )); do
        if [[ ${f[$i]} -eq 0 ]]; then
            flag=0
            for (( j=0; j<m; j++ )); do
                if [[ ${need[$i,$j]} -gt ${avail[$j]} ]]; then
                    flag=1
                    break
                fi
            done
            if [[ $flag -eq 0 ]]; then
                ans[$ind]=$i
                for (( y=0; y<m; y++ )); do
                    avail[$y]=$((${avail[$y]} + ${alloc[$i,$y]}))
                done
                f[$i]=1
                ((ind++))
            fi
        fi
    done
done

flag=1
for (( i=0; i<n; i++ )); do
    if [[ ${f[$i]} -eq 0 ]]; then
        flag=0
        echo "The following system is not safe"
        break
    fi
done

if [[ $flag -eq 1 ]]; then
    echo "Following is the SAFE Sequence"
    for (( i=0; i<n-1; i++ )); do
        printf " P%s ->" "${ans[$i]}"
    done
    printf " P%s\n" "${ans[$n-1]}"
fi

exit 0
