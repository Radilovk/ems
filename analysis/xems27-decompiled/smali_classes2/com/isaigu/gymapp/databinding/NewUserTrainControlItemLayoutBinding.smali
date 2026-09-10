.class public final Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;
.super Ljava/lang/Object;
.source "NewUserTrainControlItemLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final MyBatterView:Lcom/isaigu/gymapp/widget/BatterView;

.field public final address:Landroid/widget/TextView;

.field public final anmo:Lcom/isaigu/gymapp/widget/MyButton;

.field public final batteryValueTextView:Landroid/widget/TextView;

.field public final circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

.field public final deleteButton:Landroid/widget/Button;

.field public final ma:Landroid/widget/TextView;

.field public final name:Landroid/widget/TextView;

.field public final paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

.field public final paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final save:Lcom/isaigu/gymapp/widget/MyButton;

.field public final setting:Lcom/isaigu/gymapp/widget/MyButton;

.field public final signalImage:Landroid/widget/ImageView;

.field public final startpaulse:Lcom/isaigu/gymapp/widget/MyButton;

.field public final stop:Lcom/isaigu/gymapp/widget/MyButton;

.field public final strenthExist:Lcom/isaigu/gymapp/widget/MyButton;

.field public final textview1:Landroid/widget/TextView;

.field public final textview10:Landroid/widget/TextView;

.field public final textview2:Landroid/widget/TextView;

.field public final textview3:Landroid/widget/TextView;

.field public final textview4:Landroid/widget/TextView;

.field public final textview5:Landroid/widget/TextView;

.field public final textview6:Landroid/widget/TextView;

.field public final textview7:Landroid/widget/TextView;

.field public final textview8:Landroid/widget/TextView;

.field public final textview9:Landroid/widget/TextView;

.field public final time:Landroid/widget/TextView;

.field public final userIcon:Landroid/widget/ImageView;

.field public final vpbBrightness1:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness10:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness2:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness3:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness4:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness5:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness6:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness7:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness8:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final vpbBrightness9:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field public final waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

.field public final waveBallProgressValue:Landroid/widget/TextView;

.field public final youyangyundong:Lcom/isaigu/gymapp/widget/MyButton;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/widget/BatterView;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/AmountView2;Lcom/isaigu/gymapp/widget/AmountView2;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/WaveBallProgress;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/MyButton;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "MyBatterView"    # Lcom/isaigu/gymapp/widget/BatterView;
    .param p3, "address"    # Landroid/widget/TextView;
    .param p4, "anmo"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p5, "batteryValueTextView"    # Landroid/widget/TextView;
    .param p6, "circleSeekBar"    # Lcom/isaigu/gymapp/widget/CircleSeekBar;
    .param p7, "deleteButton"    # Landroid/widget/Button;
    .param p8, "ma"    # Landroid/widget/TextView;
    .param p9, "name"    # Landroid/widget/TextView;
    .param p10, "paulsecontinue"    # Lcom/isaigu/gymapp/widget/AmountView2;
    .param p11, "paulsestop"    # Lcom/isaigu/gymapp/widget/AmountView2;
    .param p12, "save"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p13, "setting"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p14, "signalImage"    # Landroid/widget/ImageView;
    .param p15, "startpaulse"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p16, "stop"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p17, "strenthExist"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p18, "textview1"    # Landroid/widget/TextView;
    .param p19, "textview10"    # Landroid/widget/TextView;
    .param p20, "textview2"    # Landroid/widget/TextView;
    .param p21, "textview3"    # Landroid/widget/TextView;
    .param p22, "textview4"    # Landroid/widget/TextView;
    .param p23, "textview5"    # Landroid/widget/TextView;
    .param p24, "textview6"    # Landroid/widget/TextView;
    .param p25, "textview7"    # Landroid/widget/TextView;
    .param p26, "textview8"    # Landroid/widget/TextView;
    .param p27, "textview9"    # Landroid/widget/TextView;
    .param p28, "time"    # Landroid/widget/TextView;
    .param p29, "userIcon"    # Landroid/widget/ImageView;
    .param p30, "vpbBrightness1"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p31, "vpbBrightness10"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p32, "vpbBrightness2"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p33, "vpbBrightness3"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p34, "vpbBrightness4"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p35, "vpbBrightness5"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p36, "vpbBrightness6"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p37, "vpbBrightness7"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p38, "vpbBrightness8"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p39, "vpbBrightness9"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    .param p40, "waveBallProgressActView"    # Lcom/isaigu/gymapp/widget/WaveBallProgress;
    .param p41, "waveBallProgressValue"    # Landroid/widget/TextView;
    .param p42, "youyangyundong"    # Lcom/isaigu/gymapp/widget/MyButton;

    .line 169
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 171
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->MyBatterView:Lcom/isaigu/gymapp/widget/BatterView;

    .line 172
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->address:Landroid/widget/TextView;

    .line 173
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->anmo:Lcom/isaigu/gymapp/widget/MyButton;

    .line 174
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->batteryValueTextView:Landroid/widget/TextView;

    .line 175
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->circleSeekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 176
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->deleteButton:Landroid/widget/Button;

    .line 177
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->ma:Landroid/widget/TextView;

    .line 178
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->name:Landroid/widget/TextView;

    .line 179
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsecontinue:Lcom/isaigu/gymapp/widget/AmountView2;

    .line 180
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->paulsestop:Lcom/isaigu/gymapp/widget/AmountView2;

    .line 181
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->save:Lcom/isaigu/gymapp/widget/MyButton;

    .line 182
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->setting:Lcom/isaigu/gymapp/widget/MyButton;

    .line 183
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->signalImage:Landroid/widget/ImageView;

    .line 184
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->startpaulse:Lcom/isaigu/gymapp/widget/MyButton;

    .line 185
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->stop:Lcom/isaigu/gymapp/widget/MyButton;

    .line 186
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->strenthExist:Lcom/isaigu/gymapp/widget/MyButton;

    .line 187
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview1:Landroid/widget/TextView;

    .line 188
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview10:Landroid/widget/TextView;

    .line 189
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview2:Landroid/widget/TextView;

    .line 190
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview3:Landroid/widget/TextView;

    .line 191
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview4:Landroid/widget/TextView;

    .line 192
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview5:Landroid/widget/TextView;

    .line 193
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview6:Landroid/widget/TextView;

    .line 194
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview7:Landroid/widget/TextView;

    .line 195
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview8:Landroid/widget/TextView;

    .line 196
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->textview9:Landroid/widget/TextView;

    .line 197
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->time:Landroid/widget/TextView;

    .line 198
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    .line 199
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness1:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 200
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness10:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 201
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness2:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 202
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness3:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 203
    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness4:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 204
    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness5:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 205
    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness6:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 206
    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness7:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 207
    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness8:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 208
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->vpbBrightness9:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 209
    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressActView:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    .line 210
    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->waveBallProgressValue:Landroid/widget/TextView;

    .line 211
    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->youyangyundong:Lcom/isaigu/gymapp/widget/MyButton;

    .line 212
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;
    .locals 87
    .param p0, "rootView"    # Landroid/view/View;

    .line 241
    move-object/from16 v0, p0

    const v1, 0x7f090018

    .line 242
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/BatterView;

    .line 243
    .local v2, "MyBatterView":Lcom/isaigu/gymapp/widget/BatterView;
    if-eqz v2, :cond_28

    .line 247
    const v1, 0x7f090033

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v46, v3

    check-cast v46, Landroid/widget/TextView;

    .line 249
    .local v46, "address":Landroid/widget/TextView;
    if-eqz v46, :cond_27

    .line 253
    const v1, 0x7f090042

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v47, v3

    check-cast v47, Lcom/isaigu/gymapp/widget/MyButton;

    .line 255
    .local v47, "anmo":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v47, :cond_26

    .line 259
    const v1, 0x7f090048

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v48, v3

    check-cast v48, Landroid/widget/TextView;

    .line 261
    .local v48, "batteryValueTextView":Landroid/widget/TextView;
    if-eqz v48, :cond_25

    .line 265
    const v1, 0x7f090073

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v49, v3

    check-cast v49, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 267
    .local v49, "circleSeekBar":Lcom/isaigu/gymapp/widget/CircleSeekBar;
    if-eqz v49, :cond_24

    .line 271
    const v1, 0x7f090085

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v50, v3

    check-cast v50, Landroid/widget/Button;

    .line 273
    .local v50, "deleteButton":Landroid/widget/Button;
    if-eqz v50, :cond_23

    .line 277
    const v1, 0x7f0900fa

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v51, v3

    check-cast v51, Landroid/widget/TextView;

    .line 279
    .local v51, "ma":Landroid/widget/TextView;
    if-eqz v51, :cond_22

    .line 283
    const v1, 0x7f090107

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v52, v3

    check-cast v52, Landroid/widget/TextView;

    .line 285
    .local v52, "name":Landroid/widget/TextView;
    if-eqz v52, :cond_21

    .line 289
    const v1, 0x7f09012a

    .line 290
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Lcom/isaigu/gymapp/widget/AmountView2;

    .line 291
    .local v53, "paulsecontinue":Lcom/isaigu/gymapp/widget/AmountView2;
    if-eqz v53, :cond_20

    .line 295
    const v1, 0x7f09012b

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v54, v3

    check-cast v54, Lcom/isaigu/gymapp/widget/AmountView2;

    .line 297
    .local v54, "paulsestop":Lcom/isaigu/gymapp/widget/AmountView2;
    if-eqz v54, :cond_1f

    .line 301
    const v1, 0x7f09015a

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v55, v3

    check-cast v55, Lcom/isaigu/gymapp/widget/MyButton;

    .line 303
    .local v55, "save":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v55, :cond_1e

    .line 307
    const v1, 0x7f090172

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v56, v3

    check-cast v56, Lcom/isaigu/gymapp/widget/MyButton;

    .line 309
    .local v56, "setting":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v56, :cond_1d

    .line 313
    const v1, 0x7f090179

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v57, v3

    check-cast v57, Landroid/widget/ImageView;

    .line 315
    .local v57, "signalImage":Landroid/widget/ImageView;
    if-eqz v57, :cond_1c

    .line 319
    const v1, 0x7f090189

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v58, v3

    check-cast v58, Lcom/isaigu/gymapp/widget/MyButton;

    .line 321
    .local v58, "startpaulse":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v58, :cond_1b

    .line 325
    const v1, 0x7f09018c

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v59, v3

    check-cast v59, Lcom/isaigu/gymapp/widget/MyButton;

    .line 327
    .local v59, "stop":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v59, :cond_1a

    .line 331
    const v1, 0x7f09018d

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v60, v3

    check-cast v60, Lcom/isaigu/gymapp/widget/MyButton;

    .line 333
    .local v60, "strenthExist":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v60, :cond_19

    .line 337
    const v1, 0x7f09019f

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v61, v3

    check-cast v61, Landroid/widget/TextView;

    .line 339
    .local v61, "textview1":Landroid/widget/TextView;
    if-eqz v61, :cond_18

    .line 343
    const v1, 0x7f0901a0

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v62, v3

    check-cast v62, Landroid/widget/TextView;

    .line 345
    .local v62, "textview10":Landroid/widget/TextView;
    if-eqz v62, :cond_17

    .line 349
    const v1, 0x7f0901a1

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v63, v3

    check-cast v63, Landroid/widget/TextView;

    .line 351
    .local v63, "textview2":Landroid/widget/TextView;
    if-eqz v63, :cond_16

    .line 355
    const v1, 0x7f0901a2

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v64, v3

    check-cast v64, Landroid/widget/TextView;

    .line 357
    .local v64, "textview3":Landroid/widget/TextView;
    if-eqz v64, :cond_15

    .line 361
    const v1, 0x7f0901a3

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v65, v3

    check-cast v65, Landroid/widget/TextView;

    .line 363
    .local v65, "textview4":Landroid/widget/TextView;
    if-eqz v65, :cond_14

    .line 367
    const v1, 0x7f0901a4

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v66, v3

    check-cast v66, Landroid/widget/TextView;

    .line 369
    .local v66, "textview5":Landroid/widget/TextView;
    if-eqz v66, :cond_13

    .line 373
    const v1, 0x7f0901a5

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v67, v3

    check-cast v67, Landroid/widget/TextView;

    .line 375
    .local v67, "textview6":Landroid/widget/TextView;
    if-eqz v67, :cond_12

    .line 379
    const v1, 0x7f0901a6

    .line 380
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v68, v3

    check-cast v68, Landroid/widget/TextView;

    .line 381
    .local v68, "textview7":Landroid/widget/TextView;
    if-eqz v68, :cond_11

    .line 385
    const v1, 0x7f0901a7

    .line 386
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v69, v3

    check-cast v69, Landroid/widget/TextView;

    .line 387
    .local v69, "textview8":Landroid/widget/TextView;
    if-eqz v69, :cond_10

    .line 391
    const v1, 0x7f0901a8

    .line 392
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v70, v3

    check-cast v70, Landroid/widget/TextView;

    .line 393
    .local v70, "textview9":Landroid/widget/TextView;
    if-eqz v70, :cond_f

    .line 397
    const v1, 0x7f0901aa

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v71, v3

    check-cast v71, Landroid/widget/TextView;

    .line 399
    .local v71, "time":Landroid/widget/TextView;
    if-eqz v71, :cond_e

    .line 403
    const v1, 0x7f0901ce

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v72, v3

    check-cast v72, Landroid/widget/ImageView;

    .line 405
    .local v72, "userIcon":Landroid/widget/ImageView;
    if-eqz v72, :cond_d

    .line 409
    const v1, 0x7f0901ed

    .line 410
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v73, v3

    check-cast v73, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 411
    .local v73, "vpbBrightness1":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v73, :cond_c

    .line 415
    const v1, 0x7f0901ee

    .line 416
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v74, v3

    check-cast v74, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 417
    .local v74, "vpbBrightness10":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v74, :cond_b

    .line 421
    const v1, 0x7f0901ef

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v75, v3

    check-cast v75, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 423
    .local v75, "vpbBrightness2":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v75, :cond_a

    .line 427
    const v1, 0x7f0901f0

    .line 428
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v76, v3

    check-cast v76, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 429
    .local v76, "vpbBrightness3":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v76, :cond_9

    .line 433
    const v1, 0x7f0901f1

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v77, v3

    check-cast v77, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 435
    .local v77, "vpbBrightness4":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v77, :cond_8

    .line 439
    const v1, 0x7f0901f2

    .line 440
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v78, v3

    check-cast v78, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 441
    .local v78, "vpbBrightness5":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v78, :cond_7

    .line 445
    const v1, 0x7f0901f3

    .line 446
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v79, v3

    check-cast v79, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 447
    .local v79, "vpbBrightness6":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v79, :cond_6

    .line 451
    const v1, 0x7f0901f4

    .line 452
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v80, v3

    check-cast v80, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 453
    .local v80, "vpbBrightness7":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v80, :cond_5

    .line 457
    const v1, 0x7f0901f5

    .line 458
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v81, v3

    check-cast v81, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 459
    .local v81, "vpbBrightness8":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v81, :cond_4

    .line 463
    const v1, 0x7f0901f6

    .line 464
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v82, v3

    check-cast v82, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 465
    .local v82, "vpbBrightness9":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    if-eqz v82, :cond_3

    .line 469
    const v1, 0x7f0901f7

    .line 470
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v83, v3

    check-cast v83, Lcom/isaigu/gymapp/widget/WaveBallProgress;

    .line 471
    .local v83, "waveBallProgressActView":Lcom/isaigu/gymapp/widget/WaveBallProgress;
    if-eqz v83, :cond_2

    .line 475
    const v1, 0x7f0901f8

    .line 476
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v84, v3

    check-cast v84, Landroid/widget/TextView;

    .line 477
    .local v84, "waveBallProgressValue":Landroid/widget/TextView;
    if-eqz v84, :cond_1

    .line 481
    const v1, 0x7f090202

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v85, v3

    check-cast v85, Lcom/isaigu/gymapp/widget/MyButton;

    .line 483
    .local v85, "youyangyundong":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v85, :cond_0

    .line 487
    new-instance v86, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-object/from16 v3, v86

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v5, v2

    move-object/from16 v6, v46

    move-object/from16 v7, v47

    move-object/from16 v8, v48

    move-object/from16 v9, v49

    move-object/from16 v10, v50

    move-object/from16 v11, v51

    move-object/from16 v12, v52

    move-object/from16 v13, v53

    move-object/from16 v14, v54

    move-object/from16 v15, v55

    move-object/from16 v16, v56

    move-object/from16 v17, v57

    move-object/from16 v18, v58

    move-object/from16 v19, v59

    move-object/from16 v20, v60

    move-object/from16 v21, v61

    move-object/from16 v22, v62

    move-object/from16 v23, v63

    move-object/from16 v24, v64

    move-object/from16 v25, v65

    move-object/from16 v26, v66

    move-object/from16 v27, v67

    move-object/from16 v28, v68

    move-object/from16 v29, v69

    move-object/from16 v30, v70

    move-object/from16 v31, v71

    move-object/from16 v32, v72

    move-object/from16 v33, v73

    move-object/from16 v34, v74

    move-object/from16 v35, v75

    move-object/from16 v36, v76

    move-object/from16 v37, v77

    move-object/from16 v38, v78

    move-object/from16 v39, v79

    move-object/from16 v40, v80

    move-object/from16 v41, v81

    move-object/from16 v42, v82

    move-object/from16 v43, v83

    move-object/from16 v44, v84

    move-object/from16 v45, v85

    invoke-direct/range {v3 .. v45}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;-><init>(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/widget/BatterView;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/AmountView2;Lcom/isaigu/gymapp/widget/AmountView2;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;Lcom/isaigu/gymapp/widget/WaveBallProgress;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/MyButton;)V

    return-object v86

    .line 484
    :cond_0
    goto :goto_0

    .line 478
    .end local v85    # "youyangyundong":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_1
    goto :goto_0

    .line 472
    .end local v84    # "waveBallProgressValue":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 466
    .end local v83    # "waveBallProgressActView":Lcom/isaigu/gymapp/widget/WaveBallProgress;
    :cond_3
    goto :goto_0

    .line 460
    .end local v82    # "vpbBrightness9":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_4
    goto :goto_0

    .line 454
    .end local v81    # "vpbBrightness8":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_5
    goto :goto_0

    .line 448
    .end local v80    # "vpbBrightness7":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_6
    goto :goto_0

    .line 442
    .end local v79    # "vpbBrightness6":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_7
    goto :goto_0

    .line 436
    .end local v78    # "vpbBrightness5":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_8
    goto :goto_0

    .line 430
    .end local v77    # "vpbBrightness4":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_9
    goto :goto_0

    .line 424
    .end local v76    # "vpbBrightness3":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_a
    goto :goto_0

    .line 418
    .end local v75    # "vpbBrightness2":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_b
    goto :goto_0

    .line 412
    .end local v74    # "vpbBrightness10":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_c
    goto :goto_0

    .line 406
    .end local v73    # "vpbBrightness1":Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
    :cond_d
    goto :goto_0

    .line 400
    .end local v72    # "userIcon":Landroid/widget/ImageView;
    :cond_e
    goto :goto_0

    .line 394
    .end local v71    # "time":Landroid/widget/TextView;
    :cond_f
    goto :goto_0

    .line 388
    .end local v70    # "textview9":Landroid/widget/TextView;
    :cond_10
    goto :goto_0

    .line 382
    .end local v69    # "textview8":Landroid/widget/TextView;
    :cond_11
    goto :goto_0

    .line 376
    .end local v68    # "textview7":Landroid/widget/TextView;
    :cond_12
    goto :goto_0

    .line 370
    .end local v67    # "textview6":Landroid/widget/TextView;
    :cond_13
    goto :goto_0

    .line 364
    .end local v66    # "textview5":Landroid/widget/TextView;
    :cond_14
    goto :goto_0

    .line 358
    .end local v65    # "textview4":Landroid/widget/TextView;
    :cond_15
    goto :goto_0

    .line 352
    .end local v64    # "textview3":Landroid/widget/TextView;
    :cond_16
    goto :goto_0

    .line 346
    .end local v63    # "textview2":Landroid/widget/TextView;
    :cond_17
    goto :goto_0

    .line 340
    .end local v62    # "textview10":Landroid/widget/TextView;
    :cond_18
    goto :goto_0

    .line 334
    .end local v61    # "textview1":Landroid/widget/TextView;
    :cond_19
    goto :goto_0

    .line 328
    .end local v60    # "strenthExist":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_1a
    goto :goto_0

    .line 322
    .end local v59    # "stop":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_1b
    goto :goto_0

    .line 316
    .end local v58    # "startpaulse":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_1c
    goto :goto_0

    .line 310
    .end local v57    # "signalImage":Landroid/widget/ImageView;
    :cond_1d
    goto :goto_0

    .line 304
    .end local v56    # "setting":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_1e
    goto :goto_0

    .line 298
    .end local v55    # "save":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_1f
    goto :goto_0

    .line 292
    .end local v54    # "paulsestop":Lcom/isaigu/gymapp/widget/AmountView2;
    :cond_20
    goto :goto_0

    .line 286
    .end local v53    # "paulsecontinue":Lcom/isaigu/gymapp/widget/AmountView2;
    :cond_21
    goto :goto_0

    .line 280
    .end local v52    # "name":Landroid/widget/TextView;
    :cond_22
    goto :goto_0

    .line 274
    .end local v51    # "ma":Landroid/widget/TextView;
    :cond_23
    goto :goto_0

    .line 268
    .end local v50    # "deleteButton":Landroid/widget/Button;
    :cond_24
    goto :goto_0

    .line 262
    .end local v49    # "circleSeekBar":Lcom/isaigu/gymapp/widget/CircleSeekBar;
    :cond_25
    goto :goto_0

    .line 256
    .end local v48    # "batteryValueTextView":Landroid/widget/TextView;
    :cond_26
    goto :goto_0

    .line 250
    .end local v47    # "anmo":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_27
    goto :goto_0

    .line 244
    .end local v46    # "address":Landroid/widget/TextView;
    :cond_28
    nop

    .line 496
    .end local v2    # "MyBatterView":Lcom/isaigu/gymapp/widget/BatterView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 222
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 228
    const v0, 0x7f0b0048

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/NewUserTrainControlItemLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
