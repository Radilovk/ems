.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;
.super Ljava/lang/Object;
.source "BluetensEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ed"
.end annotation


# static fields
.field static final F_HZ:I = 0x1

.field static final F_REST:I = 0x4

.field static final F_REST_HZ:I = 0x5

.field static final F_RISE:I = 0x6

.field static final F_TIME:I = 0x0

.field static final F_US:I = 0x2

.field static final F_WORK:I = 0x3

.field static final SAFE_HZ:I = 0x78


# instance fields
.field final a:Landroid/app/Activity;

.field final cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;",
            ">;"
        }
    .end annotation
.end field

.field delete:Landroid/widget/TextView;

.field deleteArmed:Z

.field deleted:Z

.field final listener:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;

.field final main:Landroid/os/Handler;

.field name:Landroid/widget/EditText;

.field final prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

.field row:Landroid/widget/LinearLayout;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V
    .registers 6

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->main:Landroid/os/Handler;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->cards:Ljava/util/List;

    .line 78
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 80
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->listener:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;

    .line 81
    return-void
.end method


# virtual methods
.method addStep(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;)V
    .registers 5

    .prologue
    .line 267
    if-eqz p1, :cond_25

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->step:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v0

    move-object v1, v0

    .line 269
    :goto_9
    if-eqz p1, :cond_50

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->step:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 270
    :goto_17
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 271
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->fill()V

    .line 272
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->save()V

    .line 273
    return-void

    .line 268
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    :cond_49
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    move-object v1, v0

    goto :goto_9

    .line 269
    :cond_50
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_17
.end method

.method card(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;
    .registers 14

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 147
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;-><init>()V

    .line 148
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->step:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 149
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->view:Landroid/widget/LinearLayout;

    .line 150
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 151
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 152
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->title:Landroid/widget/TextView;

    .line 153
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->title:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v3, "\u29c9"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x2c

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 155
    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;

    invoke-direct {v3, p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v3, "\u2715"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x2c

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 159
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v4

    const/high16 v5, 0x42300000    # 44.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 161
    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$RemoveStep;

    invoke-direct {v4, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$RemoveStep;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 168
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 170
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 171
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->view:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const-string v1, "\u0412\u0440\u0435\u043c\u0435"

    const-string v4, "Time"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;

    invoke-direct {v4, p0, v0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;I)V

    invoke-virtual {p0, v2, v1, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->time:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 175
    const-string v1, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    const-string v4, "Frequency"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;

    invoke-direct {v4, p0, v0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;I)V

    invoke-virtual {p0, v2, v1, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->hz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 176
    const-string v1, "\u0428\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v4, "Pulse width"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;I)V

    invoke-virtual {p0, v2, v1, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->us:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 177
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v2, "Impulse"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;I)V

    invoke-virtual {p0, v3, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->work:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->restBox:Landroid/widget/LinearLayout;

    .line 179
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->restBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->restBox:Landroid/widget/LinearLayout;

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;I)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->rest:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 181
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->restBox:Landroid/widget/LinearLayout;

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v3, "Pulses in the pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;I)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->restHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 182
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->restBox:Landroid/widget/LinearLayout;

    const-string v2, "\u041f\u043b\u0430\u0432\u043d\u043e \u043a\u0430\u0447\u0432\u0430\u043d\u0435"

    const-string v3, "Soft rise"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Change;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;I)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->rise:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 184
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v1, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->note:Landroid/widget/TextView;

    .line 185
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->note:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->view:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->note:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-object v0
.end method

.method change(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;II)V
    .registers 12

    .prologue
    const/16 v4, 0x32

    const/16 v2, 0x1e

    const/16 v1, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 201
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->step:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 202
    packed-switch p2, :pswitch_data_c0

    .line 227
    const/16 v0, 0x7d0

    iget v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    mul-int/lit8 v2, p3, 0x64

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    .line 230
    :cond_1e
    :goto_1e
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->cards:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v2

    if-eqz v2, :cond_bb

    aget-object v0, v0, v6

    :goto_30
    invoke-virtual {p0, p1, v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->render(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;ILjava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->subtitle()V

    .line 233
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->save()V

    .line 234
    return-void

    .line 204
    :pswitch_3a
    if-lez p3, :cond_4a

    iget v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 205
    :goto_3e
    iget v4, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    const/16 v5, 0x78

    if-ge v0, v5, :cond_4f

    move v0, v1

    :goto_45
    mul-int/2addr v0, p3

    add-int/2addr v0, v4

    iput v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    goto :goto_1e

    .line 204
    :cond_4a
    iget v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 205
    :cond_4f
    const/16 v1, 0x258

    if-ge v0, v1, :cond_55

    move v0, v2

    goto :goto_45

    :cond_55
    const/16 v0, 0x3c

    goto :goto_45

    .line 209
    :pswitch_58
    const/16 v0, 0x78

    iget v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 210
    iget v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1e

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 211
    iget v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    if-lt v0, v4, :cond_7b

    const/4 v0, 0x4

    :goto_78
    iput v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    goto :goto_1e

    :cond_7b
    const/4 v0, 0x6

    goto :goto_78

    .line 215
    :pswitch_7d
    const/16 v0, 0x190

    iget v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    mul-int/lit8 v2, p3, 0xa

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    goto :goto_1e

    .line 218
    :pswitch_8f
    iget v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    add-int/2addr v0, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    goto :goto_1e

    .line 221
    :pswitch_9d
    iget v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    add-int/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    goto/16 :goto_1e

    .line 224
    :pswitch_ac
    iget v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    add-int/2addr v0, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    goto/16 :goto_1e

    .line 231
    :cond_bb
    aget-object v0, v0, v7

    goto/16 :goto_30

    .line 202
    nop

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_58
        :pswitch_7d
        :pswitch_8f
        :pswitch_9d
        :pswitch_ac
    .end packed-switch
.end method

.method closed()V
    .registers 3

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->deleted:Z

    if-nez v0, :cond_7

    .line 308
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->save()V

    .line 310
    :cond_7
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->listener:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->deleted:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_e
    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;->onClosed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 311
    return-void

    .line 310
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    goto :goto_e
.end method

.method delete()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->deleteArmed:Z

    if-nez v0, :cond_21

    .line 288
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->deleteArmed:Z

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->delete:Landroid/widget/TextView;

    const-string v1, "\u0421\u0438\u0433\u0443\u0440\u0435\u043d \u043b\u0438 \u0441\u0438? \u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v2, "Sure? Delete"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Disarm;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Disarm;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    :goto_20
    return-void

    .line 293
    :cond_21
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->deleted:Z

    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_20
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method field(Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 8

    .prologue
    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const/high16 v1, 0x41480000    # 12.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {v0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v0, v1, v2, v3, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    .line 194
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-object v0
.end method

.method fill()V
    .registers 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4c

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->card(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->cards:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43eb0000    # 470.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 140
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->row:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->render(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;ILjava/lang/String;)V

    .line 135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 143
    :cond_4c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->subtitle()V

    .line 144
    return-void
.end method

.method removeStep(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;)V
    .registers 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1f

    .line 277
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->note:Landroid/widget/TextView;

    const-string v1, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0438\u043c\u0430 \u043f\u043e\u043d\u0435 \u0435\u0434\u043d\u0430 \u0441\u0442\u044a\u043f\u043a\u0430."

    const-string v2, "A program has at least one step."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->note:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :goto_1e
    return-void

    .line 281
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->step:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->fill()V

    .line 283
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->save()V

    goto :goto_1e
.end method

.method render(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;ILjava/lang/String;)V
    .registers 13

    .prologue
    const/16 v2, 0x2e

    const/4 v8, 0x0

    .line 239
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->step:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 240
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v4

    .line 241
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u0442\u044a\u043f\u043a\u0430 "

    const-string v6, "Step "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->time:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->time(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u043c\u0438\u043d:\u0441\u0435\u043a"

    const-string v6, "min:sec"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->hz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Hz"

    invoke-virtual {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->us:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u00b5s"

    invoke-virtual {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->work:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "\u0431\u0435\u0437 \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "continuous"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_66
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v1

    if-eqz v1, :cond_117

    const-string v1, "\u043f\u043e\u0434 20 Hz"

    const-string v6, "under 20 Hz"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    :goto_74
    invoke-virtual {v5, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->restBox:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_121

    const v0, 0x3eb33333    # 0.35f

    :goto_82
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 248
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->rest:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " s"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->restHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    if-nez v0, :cond_125

    const-string v0, "\u0442\u0438\u0448\u0438\u043d\u0430"

    const-string v5, "silence"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_af
    const-string v5, ""

    invoke-virtual {v1, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->rise:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%.1f s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->riseMs:I

    int-to-float v3, v3

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_13c

    const/16 v0, 0x2c

    :goto_d1
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz p3, :cond_13e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13e

    .line 252
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->note:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u26a0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->note:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :cond_ff
    :goto_ff
    return-void

    .line 245
    :cond_100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_66

    .line 246
    :cond_117
    const-string v1, "\u043f\u043e\u0441\u043b\u0435 \u043f\u0430\u0443\u0437\u0430"

    const-string v6, "then a pause"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_74

    .line 247
    :cond_121
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_82

    .line 249
    :cond_125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restHz:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Hz"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_af

    :cond_13c
    move v0, v2

    .line 250
    goto :goto_d1

    .line 254
    :cond_13e
    if-eqz p3, :cond_ff

    .line 255
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Card;->note:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ff
.end method

.method save()V
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 301
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    .line 303
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 304
    return-void

    .line 299
    :cond_28
    const-string v0, ""

    goto :goto_16
.end method

.method show()V
    .registers 10

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x42600000    # 56.0f

    const/high16 v6, 0x42500000    # 52.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41200000    # 10.0f

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v1, "\u0420\u044a\u0447\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "Manual program"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/16 v3, 0x500

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 93
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    .line 95
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 96
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    const/16 v2, 0x4001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 97
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    const-string v2, "\u0418\u043c\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v3, "Program name"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 100
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 101
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 102
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 103
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->name:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43d20000    # 420.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v2, "\uff0b \u0421\u0442\u044a\u043f\u043a\u0430"

    const-string v3, "\uff0b Step"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;

    const/4 v3, -0x1

    invoke-direct {v2, p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$AddStep;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 113
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 114
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->row:Landroid/widget/LinearLayout;

    .line 115
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->row:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 116
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v1, "\u0418\u0437\u0442\u0440\u0438\u0439 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v2, "Delete program"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->delete:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->delete:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->delete:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Delete;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Delete;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->delete:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->a:Landroid/app/Activity;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Done;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Done;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->fill()V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Closed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Closed;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 130
    return-void
.end method

.method subtitle()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041e\u0431\u0449\u043e "

    const-string v3, "Total "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->seconds()I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->time(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_72

    const-string v0, " \u0441\u0442\u044a\u043f\u043a\u0430"

    :goto_4a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->prog:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_75

    const-string v1, " step"

    :goto_56
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 \u0437\u0430\u043f\u0438\u0441\u0432\u0430 \u0441\u0435 \u0441\u0430\u043c\u043e"

    const-string v3, " \u00b7 saved as you go"

    .line 263
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void

    .line 262
    :cond_72
    const-string v0, " \u0441\u0442\u044a\u043f\u043a\u0438"

    goto :goto_4a

    :cond_75
    const-string v1, " steps"

    goto :goto_56
.end method
