# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name RH_Computers -Path "DC=AD,DC=rlhull,DC=lan" -Description "RH Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=RH_Computers,DC=AD,DC=rlhull,DC=lan"
New-ADOrganizationalUnit -Name RH_Groups -Path "DC=AD,DC=rlhull,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name RH_Privileged_Accounts -Path "DC=AD,DC=rlhull,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name RH_Users -Path "DC=AD,DC=rlhull,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=RH_Groups,DC=AD,DC=rlhull,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=RH_Groups,DC=AD,DC=rlhull,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=RH_Groups,DC=AD,DC=rlhull,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=RH_Groups,DC=AD,DC=rlhull,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=RH_Groups,DC=AD,DC=rlhull,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=RH_Groups,DC=AD,DC=rlhull,DC=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=RH_Groups,DC=AD,DC=rlhull,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
