import 'package:flutter/material.dart';
import 'classes.dart';
import 'note.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 60.0,
        title: const Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'My',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Note.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        width: 330,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.search_outlined,
                              size: 22,
                              color: Colors.grey,
                            ),
                            hintText: 'Search notes',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        height: 50,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.menu,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: const <Widget>[
                  Short(
                    title: 'Image test',
                    body: 'Adding image to a memo',
                    lastedited: 'Last Edited 7/12/2021',
                  ),
                  Short(
                    title: 'OCR tes',
                    body: 'dajkhdjdjsklah\nslkjdskdasjdk\nsjdlskjdlkajs',
                    lastedited: 'Last Edited 5/8/2021',
                  ),
                  ShortIcon(
                    title: 'Long piece of text',
                    lastedited: 'Last Edited 5/8/2021',
                  ),
                  Short(
                    title: 'My name',
                    body:
                        'dajkhdjkhdjadhksh\nahdsjdkasjhds\ndlsjdlkasj\ndlasjdksjlds',
                    lastedited: 'Last Edited 12/4/2022',
                  ),
                  ShortIcon(
                    title: 'Only me',
                    lastedited: 'Last Edited 5/8/2021',
                  ),
                  Short(
                    title: 'My many names',
                    body: 'dajkhdjkhdsdasds',
                    lastedited: 'Last Edited 12/4/2022',
                  ),
                  Short(
                    title: 'dshdkajs',
                    body: 'dajkhdjkh',
                    lastedited: 'dshjdkajhs',
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.edit_note,
          color: Colors.white,
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyNotePage(),
          ),
        ),
      ),
    );
  }
}
