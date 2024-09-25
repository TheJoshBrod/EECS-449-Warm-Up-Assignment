walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker add_7 {
    has number: int;

    can return_message with `root entry {
        report {
            "response": (self.number + 7)
        };
    }
}


walker add_7_with_body {
    has name: str;
    has number: int;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "! Your number plus 7 is: " + str(self.number + 7)
        };
    }
}
