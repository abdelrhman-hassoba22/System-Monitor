# **System Operations Manager**  

## **Description**  
This project is a lightweight and interactive tool designed to monitor system information and manage processes effectively. The application provides detailed insights into system performance and allows you to view and control active processes.  

## **Usage:**  
1. **Grant Execution Permissions**:  
   ```bash
   chmod +x <filename>
   ```  

2. **Run the Application**:  
   ```bash
   ./<filename>
   ```  

3. **Interactive Workflow**:  
   - At launch, the application displays processor, system, and memory information sequentially.  
   - After viewing the summary, press **Enter** to proceed to the process management section.  

## **Features**  
1. **Processor Information**:  
   - Displays the architecture of the processor.  
   - Identifies if the system is 32-bit or 64-bit.  

2. **System Information**:  
   - Detailed data about the kernel and hostname.  

3. **System Status Summary**:  
   - Shows system uptime.  
   - Lists active users.  
   - Provides average load metrics.  

4. **Memory Usage**:  
   - Details about RAM and swap usage.  

5. **Process Management**:  
   - View process details, including:  
     - Process ID (PID)  
     - User running the process  
     - Command used to execute the process  
   - Navigate and manage processes interactively.  

### **Note:**
I use the `less` command to display tasks. You can interact with it by typing `!` followed by the command you want, such as terminating a process, 
or use `?` to search for specific text. Example: `!kill <pid>`.
to quit press `q`.
