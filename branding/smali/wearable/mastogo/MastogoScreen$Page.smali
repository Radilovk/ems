.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;
.implements Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;
.implements Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Page"
.end annotation


# static fields
.field static final F_DOWN:I = 0x7

.field static final F_DUTY:I = 0x3

.field static final F_EVERY:I = 0x9

.field static final F_HI:I = 0x1

.field static final F_LO:I = 0x0

.field static final F_OFF:I = 0x8

.field static final F_ON:I = 0x6

.field static final F_PERIOD:I = 0x2

.field static final F_STEP:I = 0x4

.field static final F_UP:I = 0x5


# instance fields
.field final a:Landroid/app/Activity;

.field armWrite:Z

.field battery:Landroid/widget/TextView;

.field clock:Landroid/widget/TextView;

.field clockLabel:Landroid/widget/TextView;

.field closed:Z

.field final console:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field consoleScroll:Landroid/widget/ScrollView;

.field consoleView:Landroid/widget/TextView;

.field contact:Landroid/widget/TextView;

.field env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

.field facts:Landroid/widget/TextView;

.field feedback:Landroid/widget/TextView;

.field go:Landroid/widget/TextView;

.field goStyle:I

.field hint:Landroid/widget/TextView;

.field hintText:Ljava/lang/String;

.field hitList:Landroid/widget/LinearLayout;

.field level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

.field linkBadge:Landroid/widget/TextView;

.field final main:Landroid/os/Handler;

.field minutes:I

.field mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

.field modOn:Z

.field mode:I

.field final prefs:Landroid/content/SharedPreferences;

.field probeArmed:Z

.field probeBtn:Landroid/widget/TextView;

.field probeText:Landroid/widget/TextView;

.field rotRow:Landroid/widget/LinearLayout;

.field rotSum:Landroid/widget/TextView;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

.field tab:I

.field tabBody:Landroid/widget/LinearLayout;

.field tabHolder:Landroid/widget/LinearLayout;

.field final tiles:[Landroid/widget/TextView;

.field unitName:Landroid/widget/TextView;

.field writeBtn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->goStyle:I

    .line 170
    const/16 v0, 0x1a

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiles:[Landroid/widget/TextView;

    .line 185
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    .line 186
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_mastogo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "tab"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "minutes"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mod"

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;-><init>()V

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mod_on"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    .line 192
    return-void
.end method

.method static indexOf([II)I
    .registers 4

    .prologue
    .line 484
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 485
    aget v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 489
    :goto_8
    return v0

    .line 484
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method static msStep(II)I
    .registers 3

    .prologue
    const/16 v0, 0x2710

    .line 570
    if-lt p0, v0, :cond_8

    if-ne p0, v0, :cond_d

    if-gez p1, :cond_d

    :cond_8
    const/16 v0, 0x1f4

    .line 571
    :goto_a
    mul-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0

    .line 570
    :cond_d
    const/16 v0, 0x3e8

    goto :goto_a
.end method

.method static secs(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 534
    rem-int/lit16 v0, p0, 0x3e8

    if-nez v0, :cond_b

    div-int/lit16 v0, p0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 535
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p0

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V
    .registers 11

    .prologue
    .line 517
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    new-instance v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;

    invoke-direct {v5, p0, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    .line 520
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fieldValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fieldUnit(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 522
    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 524
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_51

    if-eqz p4, :cond_59

    .line 525
    :cond_51
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 527
    :cond_59
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    return-void
.end method

.method chipName(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method copy()V
    .registers 5

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->report()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 988
    const-string v0, "\nconsole:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 990
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 987
    :cond_30
    const-string v0, "MASTOGO: not linked\n"

    goto :goto_c

    .line 993
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 994
    const-string v2, "mastogo"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 995
    const-string v0, "\u2713 \u041e\u0442\u0447\u0435\u0442\u044a\u0442 \u0435 \u043a\u043e\u043f\u0438\u0440\u0430\u043d."

    const-string v1, "\u2713 Report copied."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_54} :catch_58

    .line 999
    :goto_54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1000
    return-void

    .line 996
    :catch_58
    move-exception v0

    .line 997
    const-string v0, "\u041d\u0435 \u043c\u043e\u0436\u0430\u0445 \u0434\u0430 \u043a\u043e\u043f\u0438\u0440\u0430\u043c."

    const-string v1, "Could not copy."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_54
.end method

.method dismissed()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    .line 1089
    sput-object v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1090
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1091
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    if-eqz v0, :cond_14

    .line 1092
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->stop()V

    .line 1094
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_38

    .line 1095
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 1096
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v1, :cond_24

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v1, :cond_2a

    .line 1097
    :cond_24
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeStop()V

    .line 1098
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->stop()V

    .line 1100
    :cond_2a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$CloseLink;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$CloseLink;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1102
    :cond_38
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method fieldUnit(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 554
    packed-switch p1, :pswitch_data_30

    .line 564
    :pswitch_3
    const-string v0, "ms (\u2265 100)"

    const-string v1, "ms (\u2265 100)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 556
    :pswitch_c
    const-string v0, "\u0441\u0438\u043b\u0430"

    const-string v1, "level"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 561
    :pswitch_15
    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v1, "seconds"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 562
    :pswitch_1e
    const-string v0, "% \u043e\u0442 \u0446\u0438\u043a\u044a\u043b\u0430"

    const-string v1, "% of the cycle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 563
    :pswitch_27
    const-string v0, "\u0446\u0438\u043a\u044a\u043b\u0430"

    const-string v1, "cycles"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 554
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_3
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_27
    .end packed-switch
.end method

.method fieldValue(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 539
    packed-switch p1, :pswitch_data_5e

    .line 549
    :pswitch_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 540
    :pswitch_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 541
    :pswitch_15
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 542
    :pswitch_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 543
    :pswitch_27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 544
    :pswitch_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 545
    :pswitch_39
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 546
    :pswitch_42
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 547
    :pswitch_4b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 548
    :pswitch_54
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 539
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_3
        :pswitch_30
        :pswitch_39
        :pswitch_42
        :pswitch_4b
        :pswitch_54
    .end packed-switch
.end method

.method fillExplore()V
    .registers 11

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v7, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v5, 0x41000000    # 8.0f

    .line 624
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 625
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 626
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    .line 627
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;

    invoke-direct {v2, p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    .line 630
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 632
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 633
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v3, "Copy the report"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 635
    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Copy;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Copy;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 637
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 638
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 640
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    .line 641
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    .line 643
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041e\u0431\u0440\u0430\u0442\u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v3, "Feedback"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    .line 647
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 648
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041a\u043e\u043d\u0437\u043e\u043b\u0430"

    const-string v3, "Console"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v8, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    .line 654
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 655
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 656
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 657
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x43160000    # 150.0f

    .line 658
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 657
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 660
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 661
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 662
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 663
    const-string v2, "AT+\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 664
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 665
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 666
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 667
    const v2, 0x81001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 669
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 670
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u041f\u0440\u0430\u0442\u0438"

    const-string v4, "Send"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 672
    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;

    invoke-direct {v3, p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 674
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 675
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderExplore()V

    .line 678
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderConsole()V

    .line 679
    return-void
.end method

.method fillMod()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441 \u043e\u0442 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v5, "Impulse from the tablet"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0441\u043b\u0435\u0434\u0432\u0430 \u0444\u043e\u0440\u043c\u0430\u0442\u0430 \u0434\u043e\u043b\u0443, \u0434\u043e\u043a\u0430\u0442\u043e \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v6, "The strength follows the shape below while the unit runs"

    .line 401
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    new-instance v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModToggle;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModToggle;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    .line 400
    invoke-static {v3, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    new-array v4, v1, [Landroid/widget/LinearLayout;

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-array v5, v12, [I

    fill-array-data v5, :array_1e2

    .line 407
    array-length v6, v5

    move v3, v2

    :goto_42
    if-ge v3, v6, :cond_6f

    aget v7, v5, v3

    .line 408
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->shapeName(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v7, v0, :cond_6d

    move v0, v1

    :goto_53
    const v10, -0x587406

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 409
    new-instance v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickShape;

    invoke-direct {v8, p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickShape;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    aget-object v8, v4, v2

    invoke-static {v7, v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 407
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_42

    :cond_6d
    move v0, v2

    .line 408
    goto :goto_53

    .line 412
    :cond_6f
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v3, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    .line 413
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 414
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 415
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_19b

    move v0, v1

    .line 418
    :goto_9b
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 419
    if-eqz v0, :cond_19e

    .line 420
    const-string v3, "\u041d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435"

    const-string v5, "Rise"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v3, v5, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 421
    const-string v3, "\u0420\u0430\u0431\u043e\u0442\u0430"

    const-string v5, "Work"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v12, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 422
    const-string v3, "\u0421\u043f\u0430\u0434\u0430\u043d\u0435"

    const-string v5, "Fall"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {p0, v4, v3, v5, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 423
    const-string v3, "\u041f\u0430\u0443\u0437\u0430"

    const-string v5, "Pause"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v13, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 431
    :cond_d1
    :goto_d1
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 433
    if-eqz v0, :cond_1cd

    const-string v3, "\u0421\u0438\u043b\u0430 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v5, "Pause strength"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_ee
    invoke-virtual {p0, v4, v3, v2, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 435
    if-eqz v0, :cond_1d7

    const-string v0, "\u0421\u0438\u043b\u0430 \u0432 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430"

    const-string v3, "Work strength"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_fb
    invoke-virtual {p0, v4, v0, v1, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 436
    const-string v0, "\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "Refresh"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v11, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 437
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v4, "\u0421\u043c\u044f\u043d\u0430 \u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u2014 \u043c\u043e\u0434\u0443\u043b\u0438 \u043f\u043e\u0434\u0440\u0435\u0434"

    const-string v5, "Frequency change \u2014 modules in turn"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v5, 0xe

    .line 441
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 440
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    new-array v0, v1, [Landroid/widget/LinearLayout;

    .line 443
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    .line 445
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillRotate()V

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 447
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 448
    const-string v1, "\u0426\u0438\u043a\u043b\u0438 \u043d\u0430 \u043c\u043e\u0434\u0443\u043b"

    const-string v3, "Cycles per module"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 449
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotateText()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v3, v4, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    .line 450
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 451
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v3, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    return-void

    :cond_19b
    move v0, v2

    .line 417
    goto/16 :goto_9b

    .line 425
    :cond_19e
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v3, v11, :cond_1c4

    const-string v3, "\u0421\u043c\u044f\u043d\u0430"

    const-string v5, "Change"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1ac
    const/4 v5, 0x2

    invoke-virtual {p0, v4, v3, v5, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 427
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v3, v1, :cond_d1

    .line 428
    const-string v3, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v5, "Impulse"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v3, v5, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    goto/16 :goto_d1

    .line 425
    :cond_1c4
    const-string v3, "\u0426\u0438\u043a\u044a\u043b"

    const-string v5, "Cycle"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1ac

    .line 433
    :cond_1cd
    const-string v3, "\u0414\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 \u043e\u0442"

    const-string v5, "Depth from"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_ee

    .line 435
    :cond_1d7
    const-string v0, "\u0434\u043e"

    const-string v3, "to"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_fb

    .line 405
    nop

    :array_1e2
    .array-data 4
        0x5
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method fillProgram()V
    .registers 15

    .prologue
    const/high16 v12, 0x40c00000    # 6.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v11, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 329
    move v6, v1

    :goto_8
    if-ge v6, v11, :cond_c8

    .line 330
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    if-nez v6, :cond_39

    move v0, v1

    :goto_1b
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 332
    const/4 v0, 0x0

    move v5, v1

    move v2, v1

    .line 334
    :goto_2b
    const/16 v4, 0x1a

    if-ge v5, v4, :cond_8f

    .line 335
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->kind(I)I

    move-result v4

    if-eq v4, v6, :cond_3c

    .line 334
    :goto_35
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2b

    .line 330
    :cond_39
    const/16 v0, 0xa

    goto :goto_1b

    .line 338
    :cond_3c
    rem-int/lit8 v4, v2, 0x5

    if-nez v4, :cond_50

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 340
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v8, 0x6

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    :cond_50
    add-int/lit8 v4, v2, 0x1

    .line 343
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->chipName(I)Ljava/lang/String;

    move-result-object v9

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    if-ne v5, v2, :cond_8d

    move v2, v3

    :goto_5d
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v8, v9, v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 344
    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 346
    new-instance v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;

    invoke-direct {v8, p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiles:[Landroid/widget/TextView;

    aput-object v2, v8, v5

    .line 348
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42300000    # 44.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v9

    invoke-direct {v8, v1, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 349
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 350
    invoke-virtual {v0, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v4

    goto :goto_35

    :cond_8d
    move v2, v1

    .line 343
    goto :goto_5d

    :cond_8f
    move v4, v1

    .line 352
    :goto_90
    rem-int/lit8 v5, v2, 0x5

    if-lez v5, :cond_b8

    rem-int/lit8 v5, v2, 0x5

    rsub-int/lit8 v5, v5, 0x5

    if-ge v4, v5, :cond_b8

    .line 353
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42300000    # 44.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v8

    invoke-direct {v5, v1, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 354
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 355
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 357
    :cond_b8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_8

    .line 361
    :cond_c8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 362
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 363
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 364
    const/16 v4, 0x50

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 365
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41c00000    # 24.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->width(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->modeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    .line 367
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupOf(I)I

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 366
    invoke-static {v4, v5, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 368
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v4, v1, v1, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 369
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 370
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->feel(IZ)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41580000    # 13.5f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    .line 372
    invoke-static {v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 371
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 376
    const/16 v0, 0x50

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 377
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 378
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0412\u0440\u0435\u043c\u0435"

    const-string v6, "Time"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    new-array v6, v3, [Landroid/widget/LinearLayout;

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    sget-object v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->MINUTES:[I

    array-length v8, v7

    move v2, v1

    :goto_1be
    if-ge v2, v8, :cond_1fd

    aget v9, v7, v2

    .line 382
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " \u043c\u0438\u043d"

    const-string v12, " min"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    if-ne v9, v0, :cond_1fb

    move v0, v3

    :goto_1e2
    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v10, v11, v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 383
    new-instance v10, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;

    invoke-direct {v10, p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    aget-object v10, v6, v1

    invoke-static {v9, v10, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 381
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1be

    :cond_1fb
    move v0, v1

    .line 382
    goto :goto_1e2

    .line 386
    :cond_1fd
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u0441\u0430 \u0432\u0433\u0440\u0430\u0434\u0435\u043d\u0438 \u0432 \u043c\u043e\u0434\u0443\u043b\u0430 (\u0434\u0430\u043d\u043d\u0438 \u043e\u0442 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e DOMAS \u043d\u0430 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f). \u0427\u0435\u0441\u0442\u043e \u0441\u0435 \u043c\u0435\u043d\u044f\u0442 \u0432\u044a\u0442\u0440\u0435 \u0432 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430: \u201e\u0430\u2013\u0431\u201c \u0441\u0435 \u043f\u043b\u044a\u0437\u0433\u0430, \u201e\u0430 / \u0431\u201c \u0441\u0435 \u0440\u0435\u0434\u0443\u0432\u0430. \u0412 \u201e\u0418\u043c\u043f\u0443\u043b\u0441\u201c \u043c\u043e\u0434\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0432 \u043f\u0430\u0443\u0437\u0438\u0442\u0435."

    const-string v3, "Frequency and width are built into the module (from the maker\'s DOMAS app). They often change inside the program: \"a\u2013b\" sweeps, \"a / b\" alternates. In \"Impulse\" modules change in the pauses."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    return-void
.end method

.method fillRotate()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v2, v1

    .line 458
    :goto_7
    const/16 v0, 0x1a

    if-ge v2, v0, :cond_63

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->indexOf([II)I

    move-result v3

    .line 460
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v3, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u25b8 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->chipName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-ltz v3, :cond_61

    const/4 v0, 0x1

    :goto_44
    const v3, -0x587406

    invoke-static {v4, v5, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 461
    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickRotate;

    invoke-direct {v3, p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickRotate;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    invoke-static {v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 458
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 460
    :cond_5e
    const-string v0, ""

    goto :goto_31

    :cond_61
    move v0, v1

    goto :goto_44

    .line 464
    :cond_63
    return-void
.end method

.method fillTab()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 306
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    .line 307
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    .line 308
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiles:[Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    .line 311
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    .line 312
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    .line 313
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    .line 314
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    .line 315
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    .line 316
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 317
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillMod()V

    .line 323
    :goto_25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 324
    return-void

    .line 318
    :cond_2b
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 319
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillExplore()V

    goto :goto_25

    .line 321
    :cond_34
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillProgram()V

    goto :goto_25
.end method

.method go()V
    .registers 4

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v1

    .line 870
    if-eqz v1, :cond_a

    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_b

    .line 887
    :cond_a
    :goto_a
    return-void

    .line 873
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 874
    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_19

    .line 875
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->stop()V

    .line 886
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_a

    .line 877
    :cond_19
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_48

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 878
    :goto_2c
    iget v2, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    if-eq v2, v0, :cond_33

    .line 879
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setMode(I)V

    .line 881
    :cond_33
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->start(I)V

    .line 882
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v0, :cond_15

    .line 883
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    goto :goto_15

    .line 877
    :cond_48
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    goto :goto_2c
.end method

.method info()V
    .registers 8

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u0430\u043a\u0432\u043e \u043c\u043e\u0436\u0435 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e"

    const-string v2, "What the unit can do"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x2d0

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 1106
    const-string v1, "\u2022 \u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 (\u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430, \u0444\u043e\u0440\u043c\u0430) \u0435 \u0432\u0433\u0440\u0430\u0434\u0435\u043d \u0432\u044a\u0432 \u0432\u0441\u044f\u043a\u0430 \u043e\u0442 26-\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u044a\u0442 \u043d\u0435 \u0433\u043e \u043f\u0440\u043e\u043c\u0435\u043d\u044f. \u041f\u043b\u0430\u0442\u043a\u0430\u0442\u0430 \u0435 ZX-571C \u0441 \u0447\u0438\u043f SYD8811.\n\u2022 26 \u043c\u043e\u0434\u0443\u043b\u0430, \u043d\u043e\u043c\u0435\u0440\u0438\u0440\u0430\u043d\u0438 1\u201326, \u043f\u043e \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435 (\u043e\u0431\u043b\u0435\u043a\u0447\u0430\u0432\u0430\u043d\u0435, \u043c\u0430\u0441\u0430\u0436, \u043c\u0443\u0441\u043a\u0443\u043b\u0438, \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435) \u2014 \u0431\u0435\u0437 \u0447\u0430\u0441\u0442\u0438 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e. \u0427\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u0441\u0430 \u043e\u0442 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e DOMAS \u043d\u0430 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f.\n\u2022 \u201e\u0418\u043c\u043f\u0443\u043b\u0441\u201c \u0440\u0438\u0441\u0443\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 (0\u201325) \u0432\u044a\u0432 \u0432\u0440\u0435\u043c\u0435\u0442\u043e, \u0434\u043e \u2248 10 \u043f\u044a\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430, \u043f\u043e\u043a\u0430\u0447\u0432\u0430\u043d\u0435 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0441 3 \u043d\u0438\u0432\u0430 \u043d\u0430\u0432\u0435\u0434\u043d\u044a\u0436. \u201e\u0420\u0430\u0431\u043e\u0442\u0430 / \u041f\u0430\u0443\u0437\u0430\u201c: \u0442\u0432\u043e\u0438\u0442\u0435 \u0432\u0440\u0435\u043c\u0435\u043d\u0430 \u0437\u0430 \u043d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435, \u0440\u0430\u0431\u043e\u0442\u0430, \u0441\u043f\u0430\u0434\u0430\u043d\u0435 \u0438 \u043f\u0430\u0443\u0437\u0430.\n\u2022 \u0421\u043c\u044f\u043d\u0430 \u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430: \u043c\u043e\u0434\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u0434\u0440\u0435\u0434, \u0432\u0441\u0435\u043a\u0438 \u043f\u043e\u0435\u043c\u0430 \u0432 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u043d\u0430 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 (\u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u043c\u0435\u043d\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441\u0430\u043c\u043e \u0431\u0435\u0437 \u0442\u043e\u043a \u0438 \u043d\u0443\u043b\u0438\u0440\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u0430\u043a \u0441\u0435 \u043a\u0430\u0447\u0432\u0430 \u043e\u0442 0).\n\u2022 \u0410\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u043a\u0430\u0437\u0432\u0430: \u0431\u0430\u0442\u0435\u0440\u0438\u044f, \u0434\u043e\u043f\u0438\u0440 \u043d\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435, \u043e\u0441\u0442\u0430\u0432\u0430\u0449\u043e \u0432\u0440\u0435\u043c\u0435, \u0437\u0430\u0449\u043e \u0441\u0435 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438\u043b\u043e.\n\u2022 \u201e\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435\u201c \u043f\u0440\u043e\u0431\u0432\u0430 ~600 \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u0441\u0430\u043c\u043e \u0437\u0430 \u0447\u0435\u0442\u0435\u043d\u0435 \u0438 \u0437\u0430\u043f\u0438\u0441\u0432\u0430 \u0432\u0441\u0438\u0447\u043a\u043e, \u043a\u043e\u0435\u0442\u043e \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438. \u201e\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u201c \u043f\u0440\u0430\u0449\u0430 ~320 \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u0441\u044a\u0441 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442: \u043d\u0435\u043f\u043e\u0437\u043d\u0430\u0442\u0430 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f ERROR:104, \u0432\u0441\u0438\u0447\u043a\u043e \u0434\u0440\u0443\u0433\u043e \u0437\u043d\u0430\u0447\u0438, \u0447\u0435 \u043a\u043e\u043c\u0430\u043d\u0434\u0430\u0442\u0430 \u0441\u044a\u0449\u0435\u0441\u0442\u0432\u0443\u0432\u0430.\n\u201e\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u043e\u0442\u0447\u0435\u0442\u0430\u201c \u0434\u0430\u0432\u0430 \u0446\u0435\u043b\u0438\u044f \u0440\u0435\u0437\u0443\u043b\u0442\u0430\u0442 \u0437\u0430 \u0430\u043d\u0430\u043b\u0438\u0437."

    const-string v2, "\u2022 The impulse (frequency, width, shape) is built into each of the 26 programs \u2014 the protocol does not change it. Board ZX-571C, SYD8811 chip.\n\u2022 26 modules numbered 1\u201326 by what they do (relief, massage, muscles, recovery) \u2014 no body parts. Frequency and width come from the maker\'s DOMAS app.\n\u2022 \"Impulse\" draws the strength (0\u201325) over time, up to \u2248 10 times a second, rising at most 3 levels at once. \"Work / Pause\": your rise, work, fall and pause times.\n\u2022 Frequency change: the modules in turn, each taking over at the start of a pause (the unit changes program only without output and zeroes the strength \u2014 it climbs again from 0).\n\u2022 The unit reports battery, pad contact, time left and why it switched off.\n\u2022 \"Explore\" tries ~600 read-only commands and records everything that answers. \"Write exploration\" sends ~320 commands with a value: an unknown one answers ERROR:104, anything else means the command exists.\n\"Copy the report\" gives the whole result for analysis."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x0

    invoke-static {v3, v1, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1134
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1135
    return-void
.end method

.method modChanged()V
    .registers 4

    .prologue
    .line 611
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mod"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_2c

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_2c

    .line 614
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    .line 616
    :cond_2c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    if-eqz v0, :cond_35

    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->invalidate()V

    .line 619
    :cond_35
    return-void
.end method

.method modStep(II)V
    .registers 7

    .prologue
    .line 575
    packed-switch p1, :pswitch_data_b4

    .line 589
    :pswitch_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    mul-int/lit8 v2, p2, 0x32

    add-int/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 591
    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 592
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 593
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->refreshFields(Landroid/view/ViewGroup;)V

    .line 594
    return-void

    .line 576
    :pswitch_1a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    goto :goto_c

    .line 577
    :pswitch_31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    const/16 v2, 0x19

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    goto :goto_c

    .line 579
    :pswitch_49
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_5c

    const/16 v0, 0x64

    .line 580
    :goto_53
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    mul-int/2addr v0, p2

    add-int/2addr v0, v2

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    goto :goto_c

    .line 579
    :cond_5c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_67

    const/16 v0, 0x1f4

    goto :goto_53

    :cond_67
    const/16 v0, 0x1388

    goto :goto_53

    .line 583
    :pswitch_6a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    mul-int/lit8 v2, p2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    goto :goto_c

    .line 584
    :pswitch_74
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->msStep(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    goto :goto_c

    .line 585
    :pswitch_81
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->msStep(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    goto/16 :goto_c

    .line 586
    :pswitch_8f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->msStep(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    goto/16 :goto_c

    .line 587
    :pswitch_9d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->msStep(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    goto/16 :goto_c

    .line 588
    :pswitch_ab
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    goto/16 :goto_c

    .line 575
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_31
        :pswitch_49
        :pswitch_6a
        :pswitch_3
        :pswitch_74
        :pswitch_81
        :pswitch_8f
        :pswitch_9d
        :pswitch_ab
    .end packed-switch
.end method

.method modToggle(Z)V
    .registers 4

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    .line 949
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mod_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 950
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v1

    .line 951
    if-eqz v1, :cond_26

    .line 952
    if-eqz p1, :cond_2a

    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    :goto_23
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    .line 954
    :cond_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 955
    return-void

    .line 952
    :cond_2a
    const/4 v0, 0x0

    goto :goto_23
.end method

.method moduleText(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 199
    if-gez p1, :cond_5

    const-string v0, "\u2014"

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->modeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V
    .registers 4

    .prologue
    .line 1060
    iget v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    if-nez v0, :cond_12

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_12

    .line 1061
    const-string v0, "\u26a0 \u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043d\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u0435 0. \u041f\u0440\u0438\u0442\u0438\u0441\u043d\u0438 \u0433\u0438 \u0438 \u0443\u0432\u0435\u043b\u0438\u0447\u0438 \u043e\u0442\u043d\u043e\u0432\u043e."

    const-string v1, "\u26a0 Pads not touching \u2014 strength is 0. Press them on and raise again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 1064
    :cond_12
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1065
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1067
    :cond_23
    return-void
.end method

.method public onLine(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;ZLjava/lang/String;)V
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 1071
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    rem-long/2addr v0, v2

    .line 1072
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%05.1f %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v8

    const/4 v1, 0x1

    if-eqz p2, :cond_42

    const-string v0, "\u2192"

    :goto_26
    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object p3, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    :goto_32
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_45

    .line 1074
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_32

    .line 1072
    :cond_42
    const-string v0, "\u2190"

    goto :goto_26

    .line 1076
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4c

    .line 1077
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderConsole()V

    .line 1079
    :cond_4c
    return-void
.end method

.method public onLinkState(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;I)V
    .registers 5

    .prologue
    .line 1052
    const/4 v0, 0x2

    if-ne p2, v0, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_18

    .line 1053
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    .line 1055
    :cond_18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1056
    return-void
.end method

.method public onProbe(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;II[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderExplore()V

    .line 1084
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1085
    return-void
.end method

.method public onUnit(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_9

    .line 1048
    :cond_8
    :goto_8
    return-void

    .line 1044
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->stop()V

    .line 1045
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    .line 1046
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->connect()V

    .line 1047
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_8
.end method

.method pickMinutes(I)V
    .registers 4

    .prologue
    .line 931
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    .line 932
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 933
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_20

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_20

    .line 935
    mul-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setTimer(I)V

    .line 937
    :cond_20
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 938
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 939
    return-void
.end method

.method pickMode(I)V
    .registers 4

    .prologue
    .line 917
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    .line 918
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 919
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_28

    .line 921
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 922
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setMode(I)V

    .line 923
    if-eqz v1, :cond_2f

    const-string v0, "\u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u043f\u0438\u0440\u0430 \u0438 \u043d\u0443\u043b\u0438\u0440\u0430 \u0441\u0438\u043b\u0430\u0442\u0430. \u25b6 \u0437\u0430 \u0441\u0442\u0430\u0440\u0442."

    const-string v1, "New program \u2014 the unit pauses and zeroes the strength. \u25b6 to start."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    :goto_26
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 926
    :cond_28
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 927
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 928
    return-void

    .line 924
    :cond_2f
    const/4 v0, 0x0

    goto :goto_26
.end method

.method pickRotate(I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->indexOf([II)I

    move-result v4

    .line 495
    if-ltz v4, :cond_4c

    .line 496
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v3, v0, [I

    move v0, v1

    move v2, v1

    .line 497
    :goto_16
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v1, v1

    if-ge v2, v1, :cond_2e

    .line 498
    if-eq v2, v4, :cond_2a

    .line 499
    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    aget v5, v5, v2

    aput v5, v3, v0

    move v0, v1

    .line 497
    :cond_2a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_16

    :cond_2e
    move-object v0, v3

    .line 507
    :goto_2f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    .line 508
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 509
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4b

    .line 511
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillRotate()V

    .line 512
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotateText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :cond_4b
    return-void

    .line 503
    :cond_4c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 504
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v1, v1

    aput p1, v0, v1

    goto :goto_2f
.end method

.method pickShape(I)V
    .registers 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput p1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 943
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 944
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 945
    return-void
.end method

.method probe(Z)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeSuspended()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 959
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeStop()V

    .line 960
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 983
    :cond_19
    :goto_19
    return-void

    .line 963
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_19

    .line 967
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeSuspended()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 968
    :cond_2a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeStop()V

    .line 982
    :goto_2d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_19

    .line 969
    :cond_31
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    if-nez v1, :cond_47

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    .line 971
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->armWrite:Z

    .line 972
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2d

    .line 974
    :cond_47
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    .line 975
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    .line 976
    if-eqz p1, :cond_51

    .line 977
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrites()V

    goto :goto_2d

    .line 979
    :cond_51
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probe()V

    goto :goto_2d
.end method

.method refreshFields(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 597
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_47

    .line 598
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3d

    instance-of v0, v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3d

    .line 600
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, v1

    .line 601
    check-cast v0, Landroid/widget/LinearLayout;

    .line 602
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 603
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fieldValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :cond_39
    :goto_39
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 604
    :cond_3d
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_39

    .line 605
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->refreshFields(Landroid/view/ViewGroup;)V

    goto :goto_39

    .line 608
    :cond_47
    return-void
.end method

.method render()V
    .registers 13

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 776
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-eqz v0, :cond_c

    .line 864
    :goto_b
    return-void

    .line 779
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v6

    .line 780
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-nez v0, :cond_1ec

    .line 781
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitName:Landroid/widget/TextView;

    const-string v4, "MASTOGO H-024B"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    const-string v4, "\u0442\u044a\u0440\u0441\u044f\u2026"

    const-string v7, "searching\u2026"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 793
    :goto_2a
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->battery:Landroid/widget/TextView;

    if-eqz v6, :cond_23a

    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    if-ltz v0, :cond_23a

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0411\u0430\u0442\u0435\u0440\u0438\u044f "

    const-string v8, "Battery "

    .line 793
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " %"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 794
    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->batteryV:D

    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-lez v0, :cond_236

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, " \u00b7 %.2f V"

    new-array v9, v5, [Ljava/lang/Object;

    iget-wide v10, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->batteryV:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_69
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    :goto_71
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    if-eqz v6, :cond_23e

    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    if-nez v0, :cond_23e

    .line 796
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    const-string v4, "\u26a0 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043d\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442"

    const-string v7, "\u26a0 pads not touching"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 804
    :goto_8e
    if-eqz v6, :cond_263

    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 805
    :goto_96
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_266

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    if-eqz v0, :cond_266

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0441\u0438\u043b\u0430 \u00b7 \u0438\u043c\u043f\u0443\u043b\u0441 "

    const-string v9, "strength \u00b7 impulse "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v8, v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\u2013"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v8, v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    :goto_cf
    invoke-virtual {v4, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_270

    move v0, v2

    :goto_d9
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 809
    if-eqz v6, :cond_273

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secondsLeft()I

    move-result v0

    .line 810
    :goto_e2
    if-eqz v6, :cond_276

    iget-boolean v4, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v4, :cond_276

    if-ltz v0, :cond_276

    .line 811
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clock:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->mmss(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u00b7 "

    const-string v8, "left \u00b7 "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->moduleText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :goto_117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    if-eqz v6, :cond_186

    .line 819
    const-string v0, "\u041d\u0430 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e: "

    const-string v7, "On the unit: "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    if-ltz v0, :cond_2a3

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->moduleText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupOf(I)I

    move-result v8

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_15b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->switches:I

    if-lez v0, :cond_173

    .line 822
    const-string v0, " \u00b7 \u0441\u043c\u0435\u043d\u0438 "

    const-string v7, " \u00b7 changes "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->switches:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 824
    :cond_173
    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    if-ltz v0, :cond_186

    .line 825
    const-string v0, " \u00b7 "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->offName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->facts:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    if-eqz v6, :cond_2a7

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_2a7

    move v4, v5

    .line 831
    :goto_196
    if-eqz v4, :cond_199

    const/4 v1, 0x4

    .line 832
    :cond_199
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->goStyle:I

    if-eq v1, v0, :cond_1b9

    .line 833
    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->goStyle:I

    .line 834
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v7, ""

    invoke-static {v0, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 836
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 838
    :cond_1b9
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v4, :cond_2aa

    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438"

    const-string v7, "\u25a0 Stop"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1c5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v6, :cond_2b4

    iget-boolean v1, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v1, :cond_2b4

    :goto_1d0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 841
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_2b7

    .line 842
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 859
    :goto_1d9
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    if-eqz v0, :cond_1e7

    .line 861
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->invalidate()V

    .line 863
    :cond_1e7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderExplore()V

    goto/16 :goto_b

    .line 784
    :cond_1ec
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_20d

    .line 786
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    const-string v4, "\u2713 \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v7, "\u2713 linked"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 787
    :cond_20d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_225

    .line 788
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    const-string v4, "\u2298 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0430\u0434\u043d\u0430"

    const-string v7, "\u2298 link lost"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 790
    :cond_225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    const-string v4, "\u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v7, "linking\u2026"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 794
    :cond_236
    const-string v0, ""

    goto/16 :goto_69

    :cond_23a
    const-string v0, ""

    goto/16 :goto_71

    .line 798
    :cond_23e
    if-eqz v6, :cond_25a

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_25a

    .line 799
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    const-string v4, "\u2713 \u0434\u043e\u043f\u0438\u0440"

    const-string v7, "\u2713 contact"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8e

    .line 802
    :cond_25a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_263
    move v0, v1

    .line 804
    goto/16 :goto_96

    .line 807
    :cond_266
    const-string v0, "\u0441\u0438\u043b\u0430 \u043e\u0442 25"

    const-string v8, "strength of 25"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cf

    :cond_270
    move v0, v3

    .line 808
    goto/16 :goto_d9

    .line 809
    :cond_273
    const/4 v0, -0x1

    goto/16 :goto_e2

    .line 814
    :cond_276
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clock:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->moduleText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_117

    .line 820
    :cond_2a3
    const-string v0, "\u2014"

    goto/16 :goto_15b

    :cond_2a7
    move v4, v1

    .line 830
    goto/16 :goto_196

    .line 838
    :cond_2aa
    const-string v0, "\u25b6 \u041f\u0443\u0441\u043d\u0438"

    const-string v7, "\u25b6 Start"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c5

    :cond_2b4
    move v2, v3

    .line 839
    goto/16 :goto_1d0

    .line 843
    :cond_2b7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_2cf

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeSuspended()Z

    move-result v0

    if-eqz v0, :cond_2cf

    .line 844
    const-string v0, "\u0410\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0430\u043c\u043e (\u0434\u044a\u043b\u0433\u043e \u0431\u0435\u0437 \u0442\u043e\u043a). \u0412\u043a\u043b\u044e\u0447\u0438 \u0433\u043e \u2014 \u0438\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435\u0442\u043e \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430 \u043e\u0442\u0442\u0430\u043c."

    const-string v1, "The unit switched itself off (idle). Switch it on \u2014 the search goes on from there."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d9

    .line 846
    :cond_2cf
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-nez v0, :cond_2dd

    .line 847
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e (\u0437\u0430\u0434\u0440\u044a\u0436 \u0431\u0443\u0442\u043e\u043d\u0430 \u043c\u0443) \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0435 \u0441\u0430\u043c\u043e."

    const-string v1, "Switch the unit on (hold its button) \u2014 it links by itself."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d9

    .line 849
    :cond_2dd
    if-nez v6, :cond_2e9

    .line 850
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u0441\u0435\u2026"

    const-string v1, "Linking\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d9

    .line 851
    :cond_2e9
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_2f7

    .line 852
    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u2014 \u0438\u0437\u0445\u043e\u0434\u044a\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d."

    const-string v1, "Searching commands \u2014 output paused."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d9

    .line 853
    :cond_2f7
    if-eqz v4, :cond_355

    .line 854
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v0, :cond_34b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441: "

    const-string v2, "Impulse: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->shapeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    if-le v0, v5, :cond_348

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 \u043c\u043e\u0434\u0443\u043b\u0438 "

    const-string v3, " \u00b7 modules "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_33e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d9

    :cond_348
    const-string v0, ""

    goto :goto_33e

    :cond_34b
    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0438."

    const-string v1, "Running."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d9

    .line 857
    :cond_355
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e. \u0421\u0438\u043b\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 1."

    const-string v1, "Ready. Strength starts at 1."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d9
.end method

.method renderConsole()V
    .registers 5

    .prologue
    .line 762
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 771
    :goto_4
    return-void

    .line 765
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 767
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 769
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ScrollDown;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ScrollDown;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method renderExplore()V
    .registers 16

    .prologue
    const/4 v14, -0x2

    const/high16 v13, 0x41500000    # 13.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    if-nez v0, :cond_c

    .line 759
    :cond_b
    :goto_b
    return-void

    .line 685
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v9

    .line 686
    if-eqz v9, :cond_110

    iget-boolean v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_110

    move v0, v1

    .line 687
    :goto_17
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v3, :cond_113

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeSuspended()Z

    move-result v3

    if-eqz v3, :cond_113

    move v8, v1

    .line 688
    :goto_26
    if-nez v0, :cond_2a

    if-eqz v8, :cond_116

    :cond_2a
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    move v7, v3

    .line 690
    :goto_31
    if-eqz v7, :cond_11b

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    move-object v6, v3

    .line 691
    :goto_36
    if-eqz v7, :cond_120

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    move-object v5, v3

    .line 692
    :goto_3b
    if-nez v0, :cond_43

    if-nez v8, :cond_43

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    if-eqz v3, :cond_125

    :cond_43
    const/16 v3, 0x8

    :goto_45
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    if-eqz v7, :cond_128

    const-string v3, "\u0422\u044a\u0440\u0441\u0438 \u0441\u043a\u0440\u0438\u0442\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0438"

    const-string v10, "Search hidden commands"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_52
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    if-eqz v7, :cond_132

    const-string v3, " \u0437\u0430\u043f\u0438\u0441\u0430"

    const-string v10, " writes"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 697
    :goto_62
    if-eqz v8, :cond_13c

    .line 698
    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438 \u0442\u044a\u0440\u0441\u0435\u043d\u0435\u0442\u043e"

    const-string v3, "\u25a0 Stop the search"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0427\u0430\u043a\u0430\u043c \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0434\u0430 \u0441\u0435 \u0432\u043a\u043b\u044e\u0447\u0438 \u2014 "

    const-string v10, "Waiting for the unit \u2014 "

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v7, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v7, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    :goto_a3
    if-nez v9, :cond_26e

    if-nez v8, :cond_26e

    const v0, 0x3ecccccd    # 0.4f

    .line 726
    :goto_aa
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 727
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 728
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 729
    if-eqz v9, :cond_271

    .line 730
    iget-object v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_271

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 731
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 732
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    aget-object v7, v0, v2

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v6, v7, v13, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 733
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 734
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x432a0000    # 170.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v8

    invoke-direct {v7, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    aget-object v0, v0, v1

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v6, v0, v13, v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 736
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 737
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v14, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_bd

    :cond_110
    move v0, v2

    .line 686
    goto/16 :goto_17

    :cond_113
    move v8, v2

    .line 687
    goto/16 :goto_26

    .line 688
    :cond_116
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->armWrite:Z

    move v7, v3

    goto/16 :goto_31

    .line 690
    :cond_11b
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    move-object v6, v3

    goto/16 :goto_36

    .line 691
    :cond_120
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    move-object v5, v3

    goto/16 :goto_3b

    :cond_125
    move v3, v2

    .line 692
    goto/16 :goto_45

    .line 694
    :cond_128
    const-string v3, "\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441"

    const-string v10, "Write exploration"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_52

    .line 696
    :cond_132
    const-string v3, " \u043a\u043e\u043c\u0430\u043d\u0434\u0438"

    const-string v10, " commands"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_62

    .line 701
    :cond_13c
    if-eqz v0, :cond_1a2

    .line 702
    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438 \u0442\u044a\u0440\u0441\u0435\u043d\u0435\u0442\u043e"

    const-string v10, "\u25a0 Stop the search"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u041f\u0440\u043e\u0431\u0432\u0430\u043c "

    const-string v12, "Trying "

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " / "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    .line 704
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v7, :cond_199

    const-string v0, " \u043f\u043e\u0437\u043d\u0430\u0442\u0438"

    const-string v7, " known"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 704
    :cond_199
    const-string v0, " \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438\u043b\u0438"

    const-string v7, " answered"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18c

    .line 705
    :cond_1a2
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    if-eqz v0, :cond_1cb

    .line 706
    const-string v0, "\u2713 \u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0441\u0430 \u0441\u0432\u0430\u043b\u0435\u043d\u0438 \u00b7 \u0437\u0430\u043f\u043e\u0447\u043d\u0438"

    const-string v3, "\u2713 Pads are off \u00b7 start"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    if-eqz v7, :cond_1c2

    .line 708
    const-string v0, "\u0421\u0432\u0430\u043b\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043e\u0442 \u0442\u044f\u043b\u043e\u0442\u043e: \u043f\u043e\u0437\u043d\u0430\u0442\u0430 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u0438\u0435\u043c\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0442\u0430 (50 Hz, 200 \u00b5s)."

    const-string v7, "Take the pads off the body: a known command may take the value (50 Hz, 200 \u00b5s)."

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    :goto_1bd
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 710
    :cond_1c2
    const-string v0, "\u0421\u0432\u0430\u043b\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043e\u0442 \u0442\u044f\u043b\u043e\u0442\u043e: \u043d\u044f\u043a\u043e\u044f \u043d\u0435\u043f\u043e\u0437\u043d\u0430\u0442\u0430 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0443\u0441\u043d\u0435 \u0442\u043e\u043a."

    const-string v7, "Take the pads off the body: an unknown command might start the output."

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1bd

    .line 713
    :cond_1cb
    if-eqz v7, :cond_24f

    const-string v0, "\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441"

    const-string v3, "Write exploration"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d5
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    if-eqz v9, :cond_26b

    iget v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    if-lez v0, :cond_26b

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    iget-boolean v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    if-eqz v0, :cond_259

    const-string v0, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e (\u0437\u0430\u043f\u0438\u0441): "

    const-string v7, "Last (write): "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1ef
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    .line 717
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 718
    iget-boolean v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    if-eqz v0, :cond_262

    const-string v0, " \u043f\u043e\u0437\u043d\u0430\u0442\u0438"

    const-string v7, " known"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_221
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    :goto_22f
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u0422\u044a\u0440\u0441\u0435\u043d\u0435: ~600 \u0432\u044a\u043f\u0440\u043e\u0441\u0430 (?, =?), ~2 \u043c\u0438\u043d. \u0417\u0430\u043f\u0438\u0441: ~320 \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u0441\u044a\u0441 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 (\u043d\u0430\u043f\u0440. AT+CFRQ=0,50), ~1 \u043c\u0438\u043d \u2014 \u043d\u0435\u043f\u043e\u0437\u043d\u0430\u0442\u0430 = ERROR:104. \u0421\u0438\u043b\u0430\u0442\u0430 \u0435 0 \u043f\u0440\u0435\u0437 \u0446\u044f\u043b\u043e\u0442\u043e \u0432\u0440\u0435\u043c\u0435."

    const-string v10, "Search: ~600 queries (?, =?), ~2 min. Write: ~320 commands with a value (e.g. AT+CFRQ=0,50), ~1 min \u2014 unknown = ERROR:104. Strength stays 0 throughout."

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 714
    :cond_24f
    const-string v0, "\u0422\u044a\u0440\u0441\u0438 \u0441\u043a\u0440\u0438\u0442\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0438"

    const-string v3, "Search hidden commands"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d5

    .line 716
    :cond_259
    const-string v0, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e: "

    const-string v7, "Last: "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1ef

    .line 718
    :cond_262
    const-string v0, " \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438\u043b\u0438"

    const-string v7, " answered"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_221

    .line 719
    :cond_26b
    const-string v0, ""

    goto :goto_22f

    :cond_26e
    move v0, v4

    .line 725
    goto/16 :goto_aa

    .line 741
    :cond_271
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    if-eqz v9, :cond_338

    .line 744
    iget-object v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_286
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 745
    const/16 v1, 0x2b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_286

    .line 747
    :cond_2b8
    iget v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    if-lez v0, :cond_319

    .line 748
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043e\u0442\u0433\u043e\u0432\u043e\u0440 "

    const-string v3, "reply "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2013

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMax:J

    .line 749
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0441\u0440\u0435\u0434\u043d\u043e "

    const-string v3, "avg "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttSum:J

    iget v1, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    int-to-long v6, v1

    div-long/2addr v4, v6

    .line 750
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2191 "

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->recvCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2193"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_319
    iget-wide v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_338

    .line 754
    const-string v0, " \u00b7 \u043f\u0443\u043b\u0441 \u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430 "

    const-string v1, " \u00b7 heartbeat "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    :cond_338
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_349

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_344
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_349
    const-string v0, "\u2014"

    goto :goto_344
.end method

.method rotateText()Ljava/lang/String;
    .registers 8

    .prologue
    .line 467
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    .line 468
    const-string v0, "\u0418\u0437\u0431\u0435\u0440\u0438 2 \u0438\u043b\u0438 \u043f\u043e\u0432\u0435\u0447\u0435 \u043c\u043e\u0434\u0443\u043b\u0430: \u0432\u0441\u0435\u043a\u0438 \u043f\u043e\u0435\u043c\u0430 \u0441\u043b\u0435\u0434 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 (\u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u043c\u0435\u043d\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441\u0430\u043c\u043e \u0431\u0435\u0437 \u0442\u043e\u043a). \u0415\u0434\u0438\u043d \u0438\u043b\u0438 \u043d\u0438\u0442\u043e \u0435\u0434\u0438\u043d \u2014 \u043c\u043e\u0434\u0443\u043b\u044a\u0442 \u043e\u0442 \u201e\u041c\u043e\u0434\u0443\u043b\u0438\u201c \u043e\u0441\u0442\u0430\u0432\u0430."

    const-string v1, "Pick 2 or more modules: each takes over after the pause (the unit changes program only without output). One or none \u2014 the module from \"Modules\" stays."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_10
    return-object v0

    .line 473
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v3, :cond_47

    aget v4, v2, v0

    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2b

    .line 476
    const-string v5, " \u2192 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_2b
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 480
    :cond_47
    const-string v0, " \u2192 \u2026"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method sendRaw(Landroid/widget/EditText;)V
    .registers 6

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v1

    .line 1004
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1005
    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d

    .line 1013
    :cond_1c
    :goto_1c
    return-void

    .line 1008
    :cond_1d
    const-string v2, "AT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    :cond_38
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->raw(Ljava/lang/String;)V

    .line 1012
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method

.method setTab(I)V
    .registers 7

    .prologue
    .line 295
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 298
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041c\u043e\u0434\u0443\u043b\u0438"

    const-string v3, "Modules"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v3, "Impulse"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435"

    const-string v3, "Explore"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 299
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    new-instance v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-static {v2, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 301
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 302
    return-void
.end method

.method sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method show()V
    .registers 12

    .prologue
    const/4 v10, -0x2

    const/high16 v9, 0x42600000    # 56.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "Mastogo"

    const-string v2, "TENS / EMS \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435 H-024B \u2014 \u043e\u0442\u0434\u0435\u043b\u043d\u043e \u043e\u0442 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    const-string v3, "H-024B TENS / EMS unit \u2014 apart from the suit"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_5c

    .line 218
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 219
    const/high16 v2, 0x44a00000    # 1280.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v3, 0x3f70a3d7    # 0.94f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 220
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 221
    const v2, 0x3ee66666    # 0.45f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 224
    :cond_5c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 229
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u041c\u043e\u0434\u0443\u043b\u0438"

    const-string v4, "Modules"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v5, "Impulse"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435"

    const-string v5, "Explore"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 230
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    .line 231
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    new-instance v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-static {v4, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    .line 234
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3faccccd    # 1.35f

    invoke-direct {v2, v7, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitCard()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 237
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 238
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hint:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v7, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 248
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 252
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StartScan;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StartScan;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method startScan()V
    .registers 3

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 1037
    :cond_4
    :goto_4
    return-void

    .line 1032
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    .line 1033
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->start()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1034
    const-string v0, "Bluetooth \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "Bluetooth is off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 1035
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_4
.end method

.method step(I)V
    .registers 5

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 891
    if-nez v0, :cond_7

    .line 914
    :goto_6
    return-void

    .line 894
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 895
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 896
    if-lez p1, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_22

    :cond_1a
    if-gez p1, :cond_30

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    if-lez v0, :cond_30

    .line 897
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 898
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 900
    :cond_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 901
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 902
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 903
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->refreshFields(Landroid/view/ViewGroup;)V

    .line 913
    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_6

    .line 906
    :cond_46
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v1, :cond_5a

    if-lez p1, :cond_5a

    .line 907
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u25b6 \u041f\u0443\u0441\u043d\u0438."

    const-string v1, "Press \u25b6 Start first."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 908
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_6

    .line 911
    :cond_5a
    const/4 v1, 0x0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setLevel(I)V

    goto :goto_42
.end method

.method tick()V
    .registers 5

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 1024
    :goto_4
    return-void

    .line 1019
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1020
    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    if-eqz v0, :cond_16

    .line 1021
    :cond_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1023
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method unitCard()Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v7, 0x41500000    # 13.0f

    const/4 v6, 0x0

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 261
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 262
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 263
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 264
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "MASTOGO H-024B"

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitName:Landroid/widget/TextView;

    .line 265
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitName:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    .line 267
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v7, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->battery:Landroid/widget/TextView;

    .line 272
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v7, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    .line 273
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->battery:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "0"

    const-string v3, "\u0441\u0438\u043b\u0430 \u043e\u0442 25"

    const-string v4, "strength of 25"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x42600000    # 56.0f

    new-instance v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Step;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 278
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 281
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 282
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u2014"

    const/high16 v4, 0x42080000    # 34.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clock:Landroid/widget/TextView;

    .line 283
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v7, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    .line 284
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 285
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->facts:Landroid/widget/TextView;

    .line 290
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->facts:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-object v0
.end method
