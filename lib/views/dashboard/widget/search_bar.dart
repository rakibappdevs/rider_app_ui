part of '../screen/dashboard_screen.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      expandedHeight: MediaQuery.sizeOf(context).height * 0.1,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              // Brand Logo
              Image.asset(
                'assets/logo/basicLogo.png',
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 12),

              // Search TextField
              Expanded(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search products...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
              ),

              InkWell(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.horizontalSize * 0.6,
                  ),
                  child: const Icon(Icons.compare_arrows),
                ),
                onTap: () {},
              ),

              InkWell(
                child: Badge(
                  child: const Icon(Icons.shopping_cart),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
