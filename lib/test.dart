List data = [
    "Title 1", "Title 2", "Title 3", "Title 4",
]


List subdata = {
    "Title 1": ["subdata1-1", "subdata1-2", "subdata1-3", "subdata1-4"],
    "Title 2": ["subdata2-1", "subdata2-2", "subdata2-3", "subdata2-4"],
    "Title 3": ["subdata3-1", "subdata3-2", "subdata3-3", "subdata3-4"],
}

String dropdownvalue = 'Title 1';  

String subcategory = "subdata1-1";

List subdataToShow = subdata[dropdownvalue];


Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    DropdownButton(
        
        // Initial Value
        value: dropdownvalue,
        
        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),   
        
        // Array list of items
        items: items.map((String items) {
        return DropdownMenuItem(
            value: items,
            child: Text(items),
        );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
        setState(() {
            dropdownvalue = newValue!;
        });
        },
    ),
    ],
),


DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    DropdownButton(
        
        // Initial Value
        value: subcategory,
        
        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),   
        
        // Array list of items
        items: subdataToShow.map((String items) {
        return DropdownMenuItem(
            value: items,
            child: Text(items),
        );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
        setState(() {
            subcategory = newValue!;
        });
        },
    ),
    ],
),