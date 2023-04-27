import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class manageEmotionalImbalances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Emotional Imbalances'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Building personal resilience to pregnancy mood swings',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 15),
            Text(
              '* Practice mental resilience: To help yourself during the ups and downs of pregnancy, it can be helpful to practice mindfulness or ‘live in the moment’, to help with tuning into your body, your mind and your emotions. Doing this helps with becoming better at recognising and tolerating what you are feeling and can actually be applied in an ongoing way throughout life.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 15),

            Text(
              '* Eat a healthy, balanced diet: It is so important to eat well for a healthy pregnancy but also for our own health in general. We understand far more now about how much digestion can influence moods and emotions, so it is really important to nourish your body, starting with diet.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 15),

            Text(
              '* Prioritise sleep: This extends to getting enough and good quality sleep. There is a range of physical and emotional benefits related to this and any parent will tell you how much better you feel after a good sleep.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 15),


            Text(
              '* Be kind to yourself: It is also incredibly important to be kind and patient with yourself as an expecting parent and hopefully this can extend to your partner (if one is in the picture). Historically, we’ve been led to believe that the process to becoming a parent is natural and therefore easy. This may be the case for some expectant parents, but most parents I talk to experience a huge range of overwhelming emotions and not all of these feel ‘good’ or ‘normal’.',
              style: Theme.of(context).textTheme.bodyText2,
            ),



          ],
        ),
      ),
    );
  }
}