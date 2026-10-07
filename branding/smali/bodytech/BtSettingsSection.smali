.class public final Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Open;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Done;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sync;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Gain;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Group;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Name;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Stop;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sort;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Redraw;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Param;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;,
        Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "xems_bodytech_settings"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 32
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 36
    :goto_3
    return-void

    .line 33
    :catch_4
    move-exception v0

    .line 34
    const-string v1, "BtSettingsSection.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 39
    if-eqz p0, :cond_7

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    .line 59
    :cond_7
    :goto_7
    return-void

    .line 40
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V

    .line 41
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_7

    .line 43
    const-string v0, "xems_bodytech_settings"

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2a

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    :cond_2a
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 48
    const-string v2, "xems_bodytech_settings"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    const-string v2, "\u041a\u043e\u0441\u0442\u044e\u043c bodytech"

    const/high16 v3, 0x41b00000    # 22.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    const-string v2, "\u0421\u0430\u043c\u043e \u0430\u043a\u043e \u0440\u0430\u0431\u043e\u0442\u0438\u0448 \u0441 bodytech \u043a\u043e\u0441\u0442\u044e\u043c: \u043a\u043e\u0439 \u0441\u043b\u0430\u0439\u0434\u0435\u0440 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u043a\u043e\u0439 \u043a\u0430\u043d\u0430\u043b."

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 52
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    const-string v2, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u043a\u0430\u043d\u0430\u043b\u0438\u0442\u0435"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 55
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Open;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Open;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42480000    # 50.0f

    .line 57
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const/16 v2, 0x1c

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7
.end method
