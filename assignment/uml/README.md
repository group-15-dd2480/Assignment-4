# UML Class Diagram

For this assignment, the UML class diagram was generated using a software called PlantUML. This software automatically generates different kinds of UML diagrams using their own scripting language, something that can be seen in `diagram.puml`. The result of this process (the actual diagram) can be viewed in `diagram.png`.

The command used to create the diagram was the following:

```
java -jar plantuml-1.2025.1.jar -DPLANTUML_LIMIT_SIZE=7000 -tpng diagram.puml
```

This requires having the .jar-file of the program installed. (The `-DPLANTUML_LIMIT_SIZE` flag was added so that the resulting .png-file isn't cut off.)