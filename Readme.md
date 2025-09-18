# 🌟 Leave Management App (Built with ABAP RAP & Fiori)

This project demonstrates how a **Leave Management System** can be built using the **ABAP RESTful Application Programming Model (RAP)** in the SAP Business Technology Platform (BTP) trial environment.  

Employees can **submit leave requests**, and managers can **approve or reject** them directly through a modern **Fiori app**.  
It showcases how backend business logic, database handling, and user interface can all come together in SAP’s cloud environment.

---

## 📸 Project Highlights

### Fiori App Preview
*(auto-generated Fiori Elements app from OData service)*  
![Fiori Preview](https://github.com/user-attachments/assets/77e80a52-9eec-42a6-be5e-e24ad5a321d8)

Accepting/Rejecting Leave Request
![Leave Status Update](https://github.com/user-attachments/assets/6c8e6d0c-063e-40fc-95fa-2ea8907745be)

### Service Binding in Eclipse
*(exposing the RAP Business Object as an OData V4 service)*  
![Service Binding](https://github.com/user-attachments/assets/3611e45f-60c3-46b9-88d8-d32016a1beca)

---

## 🧩 How It Works (Simplified)

1. **Data Model** – A table (`ZTABLE_NEW`) stores leave requests (employee, leave type, dates, status).  
2. **Business Logic** – RAP behavior implementation controls what happens when a leave is **approved** or **rejected**.  
3. **Fiori Interface** – The OData service is automatically consumed by a Fiori Elements app, giving managers a clean UI to act on requests.  

---

## ✨ Key Features

- **Submit & Manage Requests** – Employees can request different types of leave (vacation, sick leave, etc.).  
- **Approve / Reject Actions** – Managers act on requests with a single click.  
- **Automated UI Generation** – Fiori Elements generates a responsive web app directly from the service definition.  
- **Realistic Workflow** – Mimics the type of leave management process used in enterprises.  

---

## 🎯 Why This Project Matters

- Shows practical use of **SAP’s RAP framework**, which is the modern way of developing apps in ABAP.  
- Demonstrates **end-to-end skills**: data modeling, backend logic, and frontend UI.  

---

## 📚 What I Learned

- Designing a **RAP Business Object** and handling **instance-level authorization**.  
- Implementing **custom actions** like Approve/Reject in ABAP.  
- Debugging RAP short dumps and resolving missing handler issues.  
- Connecting business logic with a **Fiori app** to provide a user-friendly interface.  

---
