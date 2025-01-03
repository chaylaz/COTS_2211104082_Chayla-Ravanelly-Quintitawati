import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Find services, food, or places',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.green),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildGopayContainer(),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildIcon('GoRide', 'assets/icons/GoRide.png'),
                _buildIcon('GoCar', 'assets/icons/GoCar.png'),
                _buildIcon('GoFood', 'assets/icons/GoFood.png'),
                _buildIcon('GoSend', 'assets/icons/GoSend.png'),
                _buildIcon('GoMart', 'assets/icons/GoMart.png'),
                _buildIcon('GoPulsa', 'assets/icons/GoPulsa.png'),
                _buildIcon('GoClub', 'assets/icons/GoClub.png'),
                _buildIcon('More', 'assets/icons/More.png'),
              ],
            ),
            SizedBox(height: 16),
            _buildPromoBanner(),
          ],
        ),
      ),
    );
  }

  Widget _buildGopayContainer() {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/gopay.png', width: 20),
                        SizedBox(width: 8),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Rp7.434',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Tap for history',
                      style: TextStyle(fontSize: 14, color: Colors.green[600]),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  _buildGopayIcon('assets/icons/Topup.png', 'Top Up'),
                  SizedBox(width: 16),
                  _buildGopayIcon('assets/icons/Bayar.png', 'Pay'),
                  SizedBox(width: 16),
                  _buildGopayIcon('assets/icons/Explore.png', 'Explore'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildGopayIcon(String assetPath, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Image.asset(assetPath, width: 24, height: 24),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _buildIcon(String label, String assetPath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(assetPath, width: 40, height: 40),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BARU!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('Aktifkan & Sambungkan GoPay di Tokopedia',
                  style: TextStyle(fontSize: 14)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sambungkan'),
              ),
            ],
          ),
          Icon(Icons.shopping_cart, size: 48, color: Colors.green),
        ],
      ),
    );
  }
}
