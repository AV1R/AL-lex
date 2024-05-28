# Cambios en chatbot.l
Añadi patrones para reconocer las preguntas sobre el nombre del chatbot (what is your name), el clima (what is the weather) y cómo está el chatbot (how are you).

# Cambios en chatbot.y
Token NAME: Añadido para manejar la pregunta sobre el nombre del chatbot.
Token WEATHER: Añadido para manejar la pregunta sobre el clima.
Token HOWAREYOU: Añadido para manejar la pregunta sobre cómo está el chatbot.
Query: Extendida para incluir las respuestas a las nuevas consultas:
        NAME: Responde con "Chatbot: My name is Chatbot."
        WEATHER: Proporciona un enlace para consultar el clima en Google.
        HOWAREYOU: Responde con "Chatbot: I'm just a program, but I'm here to help you!"
