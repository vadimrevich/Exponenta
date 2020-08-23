# ���������� ������ � ������� ��������������!
# Thanks for the solution https://stackoverflow.com/a/31602095

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

$hypervisor_status = Invoke-Expression "bcdedit /enum" | Select-String "hypervisorlaunchtype"
$reboot_timeout = 5; #����� � �������� �� ������������ ����������
$status_message = "��������� Hyper-V. ��������� ����� ������������ ����� $reboot_timeout ������.";
$message_displayed = 15; # How long the message will be displayed
$commentary_to_system_journal = @("�������� Hyper-V","��������� Hyper-V");
$reboot_reason = "P:2:4";

If( $hypervisor_status -match "auto" )
{
	Write-Host $status_message;
	Start-Sleep -Seconds $message_displayed;
	bcdedit /set hypervisorlaunchtype off;
	shutdown -r -t $reboot_timeout /c $commentary_to_system_journal[1] /d $reboot_reason;
} Else {
	Write-Host $status_message;
	Start-Sleep -Seconds $message_displayed;
	bcdedit /set hypervisorlaunchtype Auto;shutdown -r -t $reboot_timeout /c $commentary_to_system_journal[0] /d $reboot_reason;
}
