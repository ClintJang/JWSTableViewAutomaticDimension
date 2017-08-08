//
//  ViewController.m
//  JWSTableViewAutomaticDimension
//
//  Created by Jang Wangsu on 2017. 8. 8..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//
#import "ViewController.h"
#import "TextCellTableViewCell.h"


/**
 Ref URL 01 : https://www.appcoda.com/self-sizing-cells/
 
 */


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *list;    // tableVeiwData
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.list = @[
                  @{
                      kTextKey :
                      @" 1절 : 동해물과 백두산이 마르고 닳도록, 하느님이 보우하사 우리나라만세."
                       "(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세."
                       ""
                       "2절: 남산위에 저 소나무 철갑을 두른듯, 바람서리 불변함은 우리기상일세."
                       "(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세."
                       ""
                       "3절: 가을 하늘 공활한데, 높고 구름없이 밝은 달은 우리가슴 일편단심일세."
                       "(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세."
                       ""
                       "4절: 이 기상과 이 맘으로 충성을 다하여 괴로우나 즐거우나 나라사랑하세."
                       "(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세."
                       "-이상입니다.-"
                      ,kImageKey:@""
                      },
                  @{
                      kTextKey :
                          @" 1절 : 동해물과 백두산이 마르고 닳도록, 하느님이 보우하사 우리나라만세."
                           "\n(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세."
                           "\n"
                           "\n2절: 남산위에 저 소나무 철갑을 두른듯, 바람서리 불변함은 우리기상일세."
                           "\n(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세."
                           "\n"
                           "\n3절: 가을 하늘 공활한데, 높고 구름없이 밝은 달은 우리가슴 일편단심일세."
                           "\n(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세."
                           "\n"
                           "\n4절: 이 기상과 이 맘으로 충성을 다하여 괴로우나 즐거우나 나라사랑하세."
                           "\n(후렴) 무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세."
                        "\n-이상입니다.-"
                      ,kImageKey:@""
                      },
                  @{
                      kTextKey :@"값이 없다면?"
                      ,kImageKey:@""
                      },
                  @{
                      kTextKey :@""
                      ,kImageKey:@""
                      },
                  @{
                      kTextKey :@"이번엔 특수문자 테스트"
                      ,kImageKey:@""
                      },
                  @{
                      kTextKey :
                          @"ㅂ+ 한자 키"
                          "─ │ ┌ ┐ ┘ └ ├ ┬ ┤ ┴ │ ━ ┃ ┏ ┓ ┛ ┗ ┣ ┳ ┫ ┻ ╋ ┠ ┯ ┨ ┷ ┿ ┝ ┰ ┥ ┸ ╂ ┒ ┑┚┙┖ ┕ ┎ ┍ ┞ ┟ ┡ ┢ ┦ ┧ ┩ ┪ ┭ ┮ ┱ ┲ ┵ ┶ ┹ ┺ ┽ ┾ ╀ ╁ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊"
                          
                          "ㅁ+ 한자 키"
                          "＃ ＆ ＊ ＠ § ※ ☆ ★ ○ ● ◎ ◇ ◆ □ ■ △ ▲ ▽ ▼ → ← ↑ ↓ ↔ 〓 ◁ ◀ ▷ ▶ ♤ ♠ ♡ ♥ ♧ ♣ ⊙ ◈ ▣ ◐ ◑ ▒ ▤ ▥ ▨ ▧ ▦ ▩ ♨ ☏ ☎ ☜ ☞ ¶ † ‡ ↕ ↗ ↙ ↖ ↘ ♭ ♩ ♪ ♬ ㉿ ㈜ № ㏇ ™ ㏂ ㏘ ℡ ? ª º"
                          
                          "ㄱ+ 한자 키"
                          "！ ＇ ， ． ／ ： ； ？ ＾ ＿ ｀ ｜ ￣ 、 、 。 · ‥ … ¨ 〃 ­ ― ∥ ＼ ∼ ´ ～ ˇ ˘ ˝ ˚ ˙ ¸ ˛ ¡ ¿ ː"
                          
                          "ㄷ + 한자 키"
                          "＋－＜＝＞± × ÷ ≠ ≤ ≥ ∞ ∴ ♂ ♀ ∠ ⊥ ⌒ ∂ ∇ ≡ ≒ ≪ ≫ √ ∽ ∝ ∵ ∫ ∬ ∈ ∋ ⊆ ⊇ ⊂ ⊃ ∪ ∩ ∧ ∨ ￢ ⇒ ⇔ ∀ ∃ ∮ ∑ ∏"
                          
                          "ㅎ+ 한자 키"
                          "Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ σ τ υ φ χ ψ ω"
                          
                          "ㄲ+ 한자 키"
                          "Æ Ð Ħ Ĳ Ŀ Ł Ø Œ Þ Ŧ Ŋ æ đ ð ħ ı ĳ ĸ ŀ ł ø œ ß þ ŧ ŋ ŉ"
                          
                          "ㅆ+ 한자 키"
                          "А Б В Г Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я а б в г д е ё ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я"
                          
                          "ㅈ + 한자 키"
                          "ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ ⅷ ⅸ ⅹ Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ"
                          
                          "ㅅ+ 한자 키"
                          "㉠ ㉡ ㉢ ㉣ ㉤ ㉥ ㉦ ㉧ ㉨ ㉩ ㉪ ㉫ ㉬ ㉭ ㉮ ㉯ ㉰ ㉱ ㉲ ㉳ ㉴ ㉵ ㉶ ㉷ ㉸ ㉹ ㉺ ㉻ ㈀ ㈁ ㈂ ㈃ ㈄ ㈅ ㈆ ㈇ ㈈ ㈉ ㈊ ㈋ ㈌ ㈍ ㈎ ㈏ ㈐ ㈑ ㈒ ㈓ ㈔ ㈕ ㈖ ㈗ ㈘ ㈙ ㈚ ㈛"
                          
                          "ㄴ+ 한자 키"
                          "＂ （ ） ［ ］ ｛ ｝ ‘ ’ “ ” 〔 〕 〈 〉 《 》 「 」 『 』 【 】"
                          
                          "ㅇ+ 한자 키"
                          "ⓐ ⓑ ⓒ ⓓ ⓔ ⓕ ⓖ ⓗ ⓘ ⓙ ⓚ ⓛ ⓜ ⓝ ⓞ ⓟ ⓠ ⓡ ⓢ ⓣ ⓤ ⓥ ⓦ ⓧ ⓨ ⓩ ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⑩ ⑪ ⑫ ⑬ ⑭ ⑮ ⒜ ⒝ ⒞ ⒟ ⒠ ⒡ ⒢ ⒣ ⒤ ⒥ ⒦ ⒧ ⒨ ⒩ ⒪ ⒫ ⒬ ⒭ ⒮ ⒯ ⒰ ⒱ ⒲ ⒳ ⒴ ⒵ ⑴ ⑵ ⑶ ⑷ ⑸ ⑹ ⑺ ⑻ ⑼ ⑽ ⑾ ⑿ ⒀ ⒁ ⒂"
                          
                          "ㄹ+ 한자 키"
                          "＄ ％ ￦ Ｆ ′ ″ ℃ Å ￠ ￡ ￥ ¤ ℉ ‰ ? ㎕ ㎖ ㎗ ℓ ㎘ ㏄ ㎣ ㎤ ㎥ ㎥ ㎦ ㎙ ㎚ ㎛ ㎜ ㎝ ㎞ ㎟ ㎠ ㎡ ㎢ ㏊ ㎍ ㎎ ㎏ ㏏ ㎈ ㎉ ㏈ ㎧ ㎨ ㎰ ㎱ ㎲ ㎳ ㎴ ㎵ ㎶ ㎷ ㎸ ㎹ ㎀ ㎁ ㎂ ㎃ ㎄ ㎺ ㎻ ㎼ ㎽ ㎾ ㎿ ㎐ ㎑ ㎒ ㎓ ㎔ Ω ㏀ ㏁ ㎊ ㎋ ㎌ ㏖ ㏅ ㎭ ㎮ ㎯ ㏛ ㎩ ㎪ ㎫ ㎬ ㏝ ㏐ ㏓ ㏃ ㏉ ㏜ ㏆"
                          
                          "ㅌ+ 한자 키"
                          "ㅥ ㅦ ㅧ ㅨ ㅩ ㅪ ㅫ ㅬ ㅭ ㅮ ㅯ ㅰ ㅱ ㅲ ㅳ ㅴ ㅵ ㅶ ㅷ ㅸ ㅹ ㅺ ㅻ ㅼ ㅽ ㅾ ㅿ ㆀ ㆁ ㆂ ㆃ ㆄ ㆅ ㆆ ㆇ ㆈ ㆉ ㆊ ㆋ ㆌ ㆍ ㆎ"
                          
                          "ㅊ+ 한자 키"
                          "½ ⅓ ⅔ ¼ ¾ ⅛ ⅜ ⅝ ⅞ ¹ ² ³ ⁴ ⁿ ₁ ₂ ₃ ₄"
                          
                          "ㅃ+ 한자 키"
                          "ァ ア ィ イ ゥ ウ ェ エ ォ オ カ ガ キ ギ ク グ ケ ゲ コ ゴ サ ザ シ ジ ス ズ セ ゼ ソ ゾ タ ダ チ ヂ ッ ツ ヅ テ デ トド ナ ニヌ ネ ノ ハ バ パ ヒ ビ ピ フ ブ プ ヘ ベ ペ ホ ボ ポ マ ミ ム メ モ ャ ヤ ュ ユ ョ ヨ ラ リ ル レ ロ ヮ ワ ヰ ヱ ヲ ン ヴ ヵ ヶ"
                          
                          "ㄸ+ 한자 키"
                          "ぁ あ ぃ い ぅ う ぇ え ぉ お か が き ぎ く ぐ け げ こ ご さ ざ し じ す ず せ ぜ そ ぞ た だ ち ぢ っ つ づ て で と ど な に ぬ ね の は ば ぱ ひ び ぴ ふ ぶ ぷ へ べ ぺ ほ ぼ ぽ ま み む め も ゃ や ゅ ゆ ょ よ ら り る れ ろ ゎ わ ゐ ゑ を ん"
                        ,kImageKey:@""
                      }
                  ];
    // 예상 수치 설정, Default 0, 그러나 1로 하면 에러가 난다. 2 이상의 값으로 하자
    self.tableView.estimatedRowHeight = 44.0f;
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

#pragma mark - UITableViewDataSource
@implementation ViewController (tableview)

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = NSStringFromClass([TextCellTableViewCell class]);
    TextCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell initLayoutWithData:self.list[indexPath.row]];
    return cell;
}

#pragma mark - UITableViewDelegate

@end