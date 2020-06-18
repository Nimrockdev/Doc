# FORMAT HDD  

> Windows  

## CMD  

> Open CMD, and type diskpart. In the new window...  

    list disk
    select disk (choose disk, make sure it's the right one)
    clean
    create partition primary
    select partition 1
    active
    format fs=NTFS

> Wait

    assign
    exit

> Disk Formated!!