#define _AMD64_
#include <wdm.h>
#include <ntddk.h>

NTSTATUS DriverEntry(void* a, void* b) {
	KeBugCheck(0x00000000, 0, 0, 0, 0);
	return STATUS_SUCCESS;
}