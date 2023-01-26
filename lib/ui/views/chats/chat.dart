import 'package:cached_network_image/cached_network_image.dart';
import 'package:custodia_provider/ui/core/theme/theme.dart';
import 'package:custodia_provider/ui/views/patients/profile/patient_profile.dart';
import 'package:custodia_provider/ui/widgets/message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:custodia_provider/utils/margin.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        shape: const Border(
          bottom: BorderSide(color: white, width: .5),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.maybePop(context),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              decoration: const BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 16,
                  color: blue,
                ),
              ),
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PatientProfile(),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(38),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://pyxis.nymag.com/v1/imgs/361/d5b/c3d6afff0017b0bd01c82eb3e84eb8cd5a-michael-b-jordan.rsquare.w1200.jpg',
                      height: 38,
                      width: 38,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  )
                ],
              ),
              const XMargin(15),
              const Text(
                'Ezeogo Mang',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(6, 3, 6, 0),
                  child: ListView(
                    reverse: true,
                    children: [
                      MessageBubble(
                        content:
                            'https://getsustain.app/assets/sustain-phone-mockup.png',
                        sender: 'joe',
                        type: 1,
                        isMe: true,
                        time: DateTime.now(),
                      ),
                      MessageBubble(
                        content:
                            'i was thinking the whole building could be an indoor sports park something',
                        sender: 'joe',
                        type: 0,
                        isMe: true,
                        time: DateTime.now(),
                      ),
                      MessageBubble(
                        content:
                            'Thanks Bibi! The changes I had to make haven’t been difficult afterall.',
                        sender: 'joe',
                        type: 0,
                        isMe: true,
                        time: DateTime.now(),
                      ),
                      MessageBubble(
                        content:
                            'Thanks Bibi! The changes I had to make haven’t been difficult afterall.',
                        sender: 'joe',
                        type: 0,
                        isMe: true,
                        time: DateTime.now(),
                      ),
                      MessageBubble(
                        content:
                            'You’ve been tracking your meals consistently. Tracking helps me give you the best possible advice. Keep those details coming! ',
                        sender: 'joe',
                        type: 0,
                        isMe: false,
                        time: DateTime.now(),
                      ),
                      MessageBubble(
                        content: 'Good morning Joseph! 👋',
                        sender: 'joe',
                        type: 0,
                        isMe: false,
                        time: DateTime.now(),
                      ),
                      MessageBubble(
                        content: 'hello there',
                        sender: 'joe',
                        type: 0,
                        isMe: true,
                        time: DateTime.now(),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        // height: 45,
                        alignment: const Alignment(0.0, 1.0),
                        decoration: BoxDecoration(
                          color: offWhite,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: blue,
                                  border: Border.all(
                                    color: blue,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(35),
                                  ),
                                ),
                                child: IconButton(
                                  iconSize: 18,
                                  icon: const Icon(Icons.add),
                                  onPressed: () {},
                                  color: Colors.white,
                                ),
                              ),
                              const XMargin(10),
                              const Flexible(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 8.5,
                                  ),
                                  child: TextField(
                                    maxLines: 3,
                                    minLines: 1,
                                    cursorColor: blue,
                                    cursorWidth: 1.5,
                                    style: TextStyle(
                                      color: black,
                                      height: 1.32,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    // controller: provider2.chatFieldTEC,
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Type your message...',
                                      hintStyle: TextStyle(color: grey),
                                    ),
                                  ),
                                ),
                              ),
                              const XMargin(10),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                child: Text(
                                  'Send',
                                  style: TextStyle(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    color: blue,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}