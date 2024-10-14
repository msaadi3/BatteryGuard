# Same scripts but differnce in type of Notification


# This one prompts on bottom right for a few Seconds   

# function Show-Notification {
#     param (
#         [string]$title,
#         [string]$message
#     )
    
#     [reflection.assembly]::LoadWithPartialName('System.Windows.Forms') | Out-Null
#     $notify = New-Object system.windows.forms.notifyicon
#     $notify.icon = [System.Drawing.SystemIcons]::Information
#     $notify.visible = $true
#     $notify.showballoontip(10, $title, $message, [system.windows.forms.tooltipicon]::None)
#     Start-Sleep -Seconds 5
#     $notify.dispose()
# }

# while ($true) {
#     $battery = Get-WmiObject -Query "SELECT * FROM Win32_Battery"
#     $batteryLevel = $battery.EstimatedChargeRemaining
#     $isCharging = $battery.BatteryStatus -eq 2

#     if (-not $isCharging -and $batteryLevel -le 20) {
#         Show-Notification "Low Battery" "Battery is $batteryLevel%. Please plug in your charger."
#     } elseif ($isCharging -and $batteryLevel -ge 90) {
#         Show-Notification "Battery Charged" "Battery is $batteryLevel%. Please unplug your charger."
#     }

#     Start-Sleep -Seconds 60
# }


# ============================================================================================================================================================================================


# Same script as above but differnce in Notification
# This one shows a dialog box in the middle of the screen and requires user interaction


# Add-Type -AssemblyName System.Windows.Forms

# function Show-BatteryNotification {
#     param (
#         [string]$message
#     )
    
#     # Create a new form (window)
#     $form = New-Object system.Windows.Forms.Form
#     $form.Text = "Battery Notification"
#     $form.Size = New-Object System.Drawing.Size(400, 200)
#     $form.StartPosition = "CenterScreen"

#     # Create a label with the message
#     $label = New-Object System.Windows.Forms.Label
#     $label.Text = $message
#     $label.AutoSize = $true
#     $label.Font = New-Object System.Drawing.Font("Arial", 12)
#     $label.Location = New-Object System.Drawing.Point(50, 50)

#     # Create an OK button to close the form
#     $okButton = New-Object System.Windows.Forms.Button
#     $okButton.Text = "OK"
#     $okButton.Location = New-Object System.Drawing.Point(150, 120)
#     $okButton.Add_Click({ $form.Close() })

#     # Add the label and button to the form
#     $form.Controls.Add($label)
#     $form.Controls.Add($okButton)

#     # Show the form as a modal dialog
#     $form.ShowDialog()
# }

# # Example Usage
# while ($true) {
#     $battery = Get-WmiObject -Query "SELECT * FROM Win32_Battery"
#     $batteryLevel = $battery.EstimatedChargeRemaining
#     $isCharging = $battery.BatteryStatus -eq 2

#     if (-not $isCharging -and $batteryLevel -le 20) {
#         Show-BatteryNotification "Battery is $batteryLevel%. Please plug in your charger."
#     } elseif ($isCharging -and $batteryLevel -ge 90) {
#         Show-BatteryNotification "Battery is $batteryLevel%. Please unplug your charger."
#     }

#     Start-Sleep -Seconds 60
# }












# ------------------------------------------------------------------------------------------------------------------------------------------------










# Same scripts but differnce in type of Notification


# This one prompts on bottom right for a few Seconds   

# function Show-Notification {
#     param (
#         [string]$title,
#         [string]$message
#     )
    
#     [reflection.assembly]::LoadWithPartialName('System.Windows.Forms') | Out-Null
#     $notify = New-Object system.windows.forms.notifyicon
#     $notify.icon = [System.Drawing.SystemIcons]::Information
#     $notify.visible = $true
#     $notify.showballoontip(10, $title, $message, [system.windows.forms.tooltipicon]::None)
#     Start-Sleep -Seconds 5
#     $notify.dispose()
# }

# while ($true) {
#     $battery = Get-WmiObject -Query "SELECT * FROM Win32_Battery"
#     $batteryLevel = $battery.EstimatedChargeRemaining
#     $isCharging = $battery.BatteryStatus -eq 2

#     if (-not $isCharging -and $batteryLevel -le 20) {
#         Show-Notification "Low Battery" "Battery is $batteryLevel%. Please plug in your charger."
#     } elseif ($isCharging -and $batteryLevel -ge 90) {
#         Show-Notification "Battery Charged" "Battery is $batteryLevel%. Please unplug your charger."
#     }

#     Start-Sleep -Seconds 60
# }


# ============================================================================================================================================================================================


# Same script as above but differnce in Notification
# This one shows a dialog box in the middle of the screen and requires user interaction


# Add-Type -AssemblyName System.Windows.Forms

# function Show-BatteryNotification {
#     param (
#         [string]$message
#     )
    
#     # Create a new form (window)
#     $form = New-Object system.Windows.Forms.Form
#     $form.Text = "Battery Notification"
#     $form.Size = New-Object System.Drawing.Size(400, 200)
#     $form.StartPosition = "CenterScreen"

#     # Create a label with the message
#     $label = New-Object System.Windows.Forms.Label
#     $label.Text = $message
#     $label.AutoSize = $true
#     $label.Font = New-Object System.Drawing.Font("Arial", 12)
#     $label.Location = New-Object System.Drawing.Point(50, 50)

#     # Create an OK button to close the form
#     $okButton = New-Object System.Windows.Forms.Button
#     $okButton.Text = "OK"
#     $okButton.Location = New-Object System.Drawing.Point(150, 120)
#     $okButton.Add_Click({ $form.Close() })

#     # Add the label and button to the form
#     $form.Controls.Add($label)
#     $form.Controls.Add($okButton)

#     # Show the form as a modal dialog
#     $form.ShowDialog()
# }

# # Example Usage
# while ($true) {
#     $battery = Get-WmiObject -Query "SELECT * FROM Win32_Battery"
#     $batteryLevel = $battery.EstimatedChargeRemaining
#     $isCharging = $battery.BatteryStatus -eq 2

#     if (-not $isCharging -and $batteryLevel -le 20) {
#         Show-BatteryNotification "Battery is $batteryLevel%. Please plug in your charger."
#     } elseif ($isCharging -and $batteryLevel -ge 90) {
#         Show-BatteryNotification "Battery is $batteryLevel%. Please unplug your charger."
#     }

#     Start-Sleep -Seconds 60
# }



# Start-Transcript -Path "C:\Users\Saad\Desktop\logfile.txt" -Append 

# try {
#     # Load System.Windows.Forms for GUI elements
#     Add-Type -AssemblyName System.Windows.Forms

#     # Function to show battery notifications
#     function Show-BatteryNotification {
#         param (
#             [string]$message
#         )
        
#         # Create a new form (window)
#         $form = New-Object system.Windows.Forms.Form
#         $form.Text = "Battery Notification"
#         $form.Size = New-Object System.Drawing.Size(400, 200)
#         $form.StartPosition = "CenterScreen"

#         # Create a label with the message
#         $label = New-Object System.Windows.Forms.Label
#         $label.Text = $message
#         $label.AutoSize = $true
#         $label.Font = New-Object System.Drawing.Font("Arial", 12)
#         $label.Location = New-Object System.Drawing.Point(50, 50)

#         # Create an OK button to close the form
#         $okButton = New-Object System.Windows.Forms.Button
#         $okButton.Text = "OK"
#         $okButton.Location = New-Object System.Drawing.Point(150, 120)
#         $okButton.Add_Click({ $form.Close() })

#         # Add the label and button to the form
#         $form.Controls.Add($label)
#         $form.Controls.Add($okButton)

#         # Show the form as a modal dialog
#         $form.ShowDialog()
#     }

#     # Infinite loop to check battery status every minute
#     while ($true) {
#         $battery = Get-WmiObject -Query "SELECT * FROM Win32_Battery"
        
#         # Check if battery info is available
#         if ($battery -ne $null) {
#             $batteryLevel = $battery.EstimatedChargeRemaining
#             $isCharging = $battery.BatteryStatus -eq 2

#             # Battery below 30% and not charging
#             if (-not $isCharging -and $batteryLevel -le 40) {
#                 Show-BatteryNotification "Battery is $batteryLevel%. Please plug in your charger."
#             }
#             # Battery above 80% and charging
#             elseif ($isCharging -and $batteryLevel -ge 45) {
#                 Show-BatteryNotification "Battery is $batteryLevel%. Please unplug your charger."
#             }
#         } else {
#             Write-Host "No battery information found."
#         }

#         # Sleep for 60 seconds before checking again
#         Start-Sleep -Seconds 60
#     }
# } catch {
#     # Error handling and logging
#     Write-Host "Error occurred: $_"
#     Read-Host -Prompt "Press Enter to exit"
# }

# Stop-Transcript

# # Keep the window open for the user to manually close
# Read-Host -Prompt "Press Enter to exit"





# Add necessary type for showing forms and message boxes
Add-Type -AssemblyName System.Windows.Forms

# Define a function to show battery notifications
function Show-BatteryNotification {
    param (
        [string]$message
    )
    
    # Create a new form (window) to display the message
    $form = New-Object system.Windows.Forms.Form
    $form.Text = "Battery Notification"
    $form.Size = New-Object System.Drawing.Size(400, 200)
    $form.StartPosition = "CenterScreen"

    # Create a label to show the message
    $label = New-Object System.Windows.Forms.Label
    $label.Text = $message
    $label.AutoSize = $true
    $label.Font = New-Object System.Drawing.Font("Arial", 12)
    $label.Location = New-Object System.Drawing.Point(50, 50)

    # Create an OK button to close the form
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Text = "OK"
    $okButton.Location = New-Object System.Drawing.Point(150, 120)
    $okButton.Add_Click({ $form.Close() })

    # Add the label and button to the form
    $form.Controls.Add($label)
    $form.Controls.Add($okButton)

    # Show the form as a modal dialog
    $form.ShowDialog()
}

# Use a mutex to ensure only one instance runs at a time
$mutexName = "Global\BatteryGuardMutex"
$mutex = New-Object System.Threading.Mutex($false, $mutexName)

if ($mutex.WaitOne(0, $false)) {
    try {
        # Show message to the user that the app is running
        [System.Windows.Forms.MessageBox]::Show("BatteryGuard is now running in the background.", "BatteryGuard")

        # Battery monitoring logic
        while ($true) {
            # Retrieve battery information
            $battery = Get-WmiObject -Query "SELECT * FROM Win32_Battery"
            $batteryLevel = $battery.EstimatedChargeRemaining
            $isCharging = $battery.BatteryStatus -eq 2

            # Display notifications based on battery status
            if (-not $isCharging -and $batteryLevel -le 20) {
                Show-BatteryNotification "Battery is $batteryLevel%. Please plug in your charger."
            } elseif ($isCharging -and $batteryLevel -ge 90) {
                Show-BatteryNotification "Battery is $batteryLevel%. Please unplug your charger."
            }

            # Wait for 60 seconds before checking again
            Start-Sleep -Seconds 60
        }
    } catch {
        # Handle any errors without logging
        # Optionally, show a message box for errors
        [System.Windows.Forms.MessageBox]::Show("An error occurred: $_", "Error")
    } finally {
        # Release the mutex when done
        $mutex.ReleaseMutex()
    }
} else {
    # Notify the user that the app is already running
    [System.Windows.Forms.MessageBox]::Show("BatteryGuard is already running.", "BatteryGuard")
}

# Exit without keeping the PowerShell window open
exit
