import ballerina/http;

configurable int port = ?;
string lastName = 123;

service / on new http:Listener(port) {

    resource function get greeting(string name) returns string|error {

        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}

