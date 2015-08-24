//
// Copyright (c) 2015 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "fileutil.h"

#import "PrivacyView.h"
#import <iAd/iAd.h>

//-------------------------------------------------------------------------------------------------------------------------------------------------
@interface PrivacyView()

@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
//-------------------------------------------------------------------------------------------------------------------------------------------------

@implementation PrivacyView

@synthesize webView;

//-------------------------------------------------------------------------------------------------------------------------------------------------
- (void)viewDidLoad
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	[super viewDidLoad];
	self.title = @"Политика";
    self.canDisplayBannerAds = YES;
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
- (void)viewWillAppear:(BOOL)animated
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
	[super viewWillAppear:animated];
    self.canDisplayBannerAds = YES;
	//---------------------------------------------------------------------------------------------------------------------------------------------
	webView.frame = self.view.bounds;
	//---------------------------------------------------------------------------------------------------------------------------------------------
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:Applications(@"privacy.html")]]];
}
- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear: animated];
    
    //  Disable iAd Banner Ads
    
    self.canDisplayBannerAds = NO;
}

@end
