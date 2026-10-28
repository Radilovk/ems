.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Info"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 2

    .prologue
    .line 1677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1679
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x4

    const/high16 v10, 0x41700000    # 15.0f

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 1683
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v5

    .line 1684
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v0, :cond_131

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libProg()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    move-result-object v0

    move-object v4, v0

    .line 1685
    :goto_17
    if-eqz v4, :cond_135

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->desc:Ljava/util/Map;

    iget-object v1, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->master:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1686
    :goto_2d
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v6, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v1, :cond_13c

    if-eqz v4, :cond_138

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->name(Z)Ljava/lang/String;

    move-result-object v1

    .line 1689
    :goto_3d
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v2, :cond_170

    if-eqz v4, :cond_166

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    if-eqz v2, :cond_166

    .line 1690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v8, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->cat:Ljava/lang/String;

    .line 1689
    invoke-virtual {v7, v8, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->catName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " \u00b7 "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->secs:I

    div-int/lit8 v7, v7, 0x3c

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    .line 1690
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1704
    :goto_7c
    const/16 v7, 0x26c

    .line 1686
    invoke-static {v6, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v6

    .line 1705
    if-eqz v5, :cond_19a

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u2022 \u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u2014 \u043d\u0430 \u0447\u0438\u0441\u0442\u0430, \u0441\u0443\u0445\u0430 \u043a\u043e\u0436\u0430, \u0432\u044a\u0440\u0445\u0443 \u043c\u0443\u0441\u043a\u0443\u043b\u0430, \u043d\u0435 \u0432\u044a\u0440\u0445\u0443 \u0441\u0442\u0430\u0432\u0430 \u0438\u043b\u0438 \u043a\u043e\u0441\u0442."

    aput-object v2, v1, v3

    const-string v2, "\u2022 \u0417\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 \u0441\u0438\u043b\u0430 1. \u041a\u0430\u0447\u0432\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u0435 \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u2014 \u043d\u0438\u043a\u043e\u0433\u0430 \u0434\u043e \u0431\u043e\u043b\u043a\u0430."

    aput-object v2, v1, v9

    const-string v2, "\u2022 \u041d\u0435 \u0432\u044a\u0440\u0445\u0443 \u0433\u044a\u0440\u0434\u0438\u0442\u0435 \u043f\u0440\u0438 \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u043d\u0435 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442, \u043d\u0435 \u0432\u044a\u0440\u0445\u0443 \u0440\u0430\u043d\u0438."

    aput-object v2, v1, v12

    const/4 v2, 0x3

    const-string v7, "\u2022 Duo: \u0434\u0432\u0435\u0442\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u0437\u0430\u0435\u0434\u043d\u043e, \u0441\u0438\u043b\u0430\u0442\u0430 \u0435 \u043e\u0442\u0434\u0435\u043b\u043d\u0430 \u0437\u0430 \u0432\u0441\u044f\u043a\u043e."

    aput-object v7, v1, v2

    const-string v2, "\u2022 \u201e\u2014\u201c \u0441\u0432\u0438\u0432\u0430 \u043f\u0440\u043e\u0437\u043e\u0440\u0435\u0446\u0430: \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430\u0442\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u0442, \u0430 \u0442\u0438 \u0440\u0430\u0431\u043e\u0442\u0438\u0448 \u0432 XEMS. \u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u0431\u0430\u043b\u043e\u043d\u0447\u0435\u0442\u043e, \u0437\u0430 \u0434\u0430 \u0433\u043e \u043e\u0442\u0432\u043e\u0440\u0438\u0448."

    aput-object v2, v1, v11

    const/4 v2, 0x5

    const-string v7, "\u2022 \u2715 \u0437\u0430\u0442\u0432\u0430\u0440\u044f \u043f\u0440\u043e\u0437\u043e\u0440\u0435\u0446\u0430 \u0438 \u0441\u043f\u0438\u0440\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430\u0442\u0430."

    aput-object v7, v1, v2

    move-object v2, v1

    .line 1719
    :goto_a2
    if-eqz v0, :cond_c9

    if-eqz v5, :cond_1ba

    aget-object v1, v0, v3

    :goto_a8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c9

    .line 1720
    iget-object v1, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    if-eqz v5, :cond_1be

    aget-object v0, v0, v3

    :goto_b8
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v7, v0, v10, v8, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    :cond_c9
    if-eqz v4, :cond_10f

    .line 1723
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    :goto_d9
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->placement(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1725
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10f

    .line 1726
    iget-object v1, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ud83d\udccd "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v4, v0, v10, v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    :cond_10f
    array-length v1, v2

    move v0, v3

    :goto_111
    if-ge v0, v1, :cond_1d1

    aget-object v4, v2, v0

    .line 1730
    iget-object v5, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v7, v4, v10, v8, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    .line 1684
    :cond_131
    const/4 v0, 0x0

    move-object v4, v0

    goto/16 :goto_17

    .line 1685
    :cond_135
    const/4 v0, 0x0

    goto/16 :goto_2d

    .line 1686
    :cond_138
    const-string v1, "Bluetens"

    goto/16 :goto_3d

    .line 1687
    :cond_13c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v1, :cond_14c

    const-string v1, "\u041d\u0430 \u0436\u0438\u0432\u043e"

    const-string v2, "Live"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    :cond_14c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v1, :cond_15c

    const-string v1, "\u0420\u044a\u0447\u0435\u043d \u0440\u0435\u0436\u0438\u043c"

    const-string v2, "Manual mode"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 1688
    :cond_15c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 1690
    :cond_166
    const-string v2, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u043d\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e Bluetens, \u0432\u0433\u0440\u0430\u0434\u0435\u043d\u0438 \u0432 XEMS."

    const-string v7, "The Bluetens app\'s programs, built into XEMS."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7c

    .line 1692
    :cond_170
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v2, :cond_180

    const-string v2, "\u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u0442\u0435 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442, \u0434\u043e\u043a\u0430\u0442\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438: \u0442\u043e \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430 \u043d\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u043e\u043a\u043e\u043b\u043e \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u0432\u0440\u044a\u0449\u0430 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0431\u0435\u0448\u0435. \u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a \u2014 \u043f\u0430\u043a\u0435\u0442\u0438 \u043f\u043e 1\u20135 \u043c\u0441 \u043e\u0442 \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0441 1 kHz (\u043d\u0430\u0439-\u0432\u0438\u0441\u043e\u043a\u043e\u0442\u043e, \u043a\u043e\u0435\u0442\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u043c\u043e\u0436\u0435, \u0435 1,2 kHz \u2014 \u0432\u0430\u0440\u0438\u0430\u043d\u0442\u044a\u0442 \u0441 4 kHz \u043d\u0435 \u0441\u0442\u0430\u0432\u0430); \u043a\u043b\u0430\u0441\u0438\u043a\u0430\u0442\u0430 \u0435 4 \u043c\u0441 \u043f\u0430\u043a\u0435\u0442\u0438, 50 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430. \u0412\u0441\u0438\u0447\u043a\u043e \u0441\u0442\u043e\u0438 \u0432 \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v7, "The values change while the pad runs: it gets a new program in about a second and the strength comes back to where it was. Australian current \u2014 1\u20135 ms bursts of 1 kHz pulses (the pad tops out at 1.2 kHz \u2014 the 4 kHz kind is out of reach); the classic is 4 ms bursts, 50 a second. Everything stays inside the suit\'s safety limits."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7c

    .line 1700
    :cond_180
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v2, :cond_190

    const-string v2, "\u0422\u0438 \u0437\u0430\u0434\u0430\u0432\u0430\u0448 \u0432\u0441\u044f\u043a\u0430 \u0441\u0442\u044a\u043f\u043a\u0430: \u0432\u0440\u0435\u043c\u0435, \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430, \u0438\u043c\u043f\u0443\u043b\u0441 \u0438 \u043f\u0430\u0443\u0437\u0430, \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430, \u043f\u043b\u0430\u0432\u043d\u043e \u043a\u0430\u0447\u0432\u0430\u043d\u0435. \u0412\u0441\u0438\u0447\u043a\u043e \u0441\u0442\u043e\u0438 \u0432 \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v7, "You set every step: time, frequency, pulse width, impulse and pause, pulses in the pause, soft rise. Everything stays inside the suit\'s safety limits."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7c

    .line 1704
    :cond_190
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->detail(IZ)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7c

    .line 1712
    :cond_19a
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u2022 Electrodes on clean, dry skin over the muscle \u2014 not on a joint or bone."

    aput-object v2, v1, v3

    const-string v2, "\u2022 It starts at strength 1. Raise it until it feels good \u2014 never to pain."

    aput-object v2, v1, v9

    const-string v2, "\u2022 Not on the chest with a pacemaker, not in pregnancy, not on wounds."

    aput-object v2, v1, v12

    const/4 v2, 0x3

    const-string v7, "\u2022 Duo: both pads start together; each has its own strength."

    aput-object v7, v1, v2

    const-string v2, "\u2022 \u201c\u2014\u201d folds the window: the pads keep going while you work in XEMS. Tap the pill to open it again."

    aput-object v2, v1, v11

    const/4 v2, 0x5

    const-string v7, "\u2022 \u2715 closes the window and stops the pads."

    aput-object v7, v1, v2

    move-object v2, v1

    goto/16 :goto_a2

    .line 1719
    :cond_1ba
    aget-object v1, v0, v9

    goto/16 :goto_a8

    .line 1720
    :cond_1be
    aget-object v0, v0, v9

    goto/16 :goto_b8

    .line 1724
    :cond_1c2
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->parts:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v9, :cond_1cd

    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->parts:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto/16 :goto_d9

    :cond_1cd
    const-string v0, ""

    goto/16 :goto_d9

    .line 1732
    :cond_1d1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 1733
    iget-object v0, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1734
    return-void
.end method
