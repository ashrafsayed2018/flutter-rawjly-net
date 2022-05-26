import 'package:flutter/material.dart';
import 'package:rawjly_net/Views/widgets/Views.dart';
import 'package:rawjly_net/Views/widgets/likes.dart';

class ShowPost extends StatefulWidget {
  const ShowPost({Key? key}) : super(key: key);

  @override
  State<ShowPost> createState() => _ShowPostState();
}

class _ShowPostState extends State<ShowPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.white,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://picsum.photos/250?image=9',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text('خدمات اعلانيه '),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.badge),
                          ],
                        ),
                        const Likes(),
                        const Views(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text('مكافحة حشرات '),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(
                                  'https://picsum.photos/250?image=9'),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('20-10-2020'),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.calendar_month),
                          ],
                        )
                      ],
                    ),
                    // ad content here
                    const SizedBox(
                      height: 20,
                    ),
                    // call buttons here
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        // call me button here
                        Icon(
                          Icons.call,
                          color: Colors.green,
                          size: 30,
                        ),
                        // whatsapp button here
                        Icon(
                          Icons.whatsapp,
                          color: Colors.green,
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: const [
                        // post title here
                        Text(
                          '  اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت ',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        // post content here
                        Text(
                          '  اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت  اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت اقوى وافضل واحسن واعظم واوثق وكل شئ تقد تقوله عن اي شركة مكافحة حشرات انها شركتنا مكافحة حشرات بالكويت',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
