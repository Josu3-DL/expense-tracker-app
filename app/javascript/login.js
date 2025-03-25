document.addEventListener("DOMContentLoaded", () => {
    const loginForm = document.getElementById("loginForm")
  
    loginForm.addEventListener("submit", (event) => {
   
  
      const username = document.getElementById("username").value
      const password = document.getElementById("password").value
  

      if (!username || !password) {
        alert("Por favor, completa todos los campos")
        event.preventDefault();
        return
      }

    })
  })
  
  