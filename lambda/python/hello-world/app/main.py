def handler(event: dict = None, context: dict = None) -> dict:
   print(event, context)

   return {
         "message": "Hello, Local World! =)"
      }
