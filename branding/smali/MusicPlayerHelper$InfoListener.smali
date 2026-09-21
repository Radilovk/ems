.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InfoListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 969
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 970
    if-nez p1, :cond_7

    .line 971
    return-void

    .line 974
    :cond_7
    :try_start_7
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 976
    const v1, 0x7f0d0172

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 977
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 978
    const/16 v2, 0x10

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$800(Landroid/app/Activity;I)I

    move-result v2

    .line 979
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 980
    const v4, 0x7f0d0173

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 982
    const v4, -0xcccccd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 983
    const/4 v4, 0x0

    const v5, 0x3f933333    # 1.15f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 984
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 985
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 986
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 987
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 988
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 989
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 990
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 991
    if-eqz v0, :cond_6d

    .line 992
    const/16 v1, 0x140

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$800(Landroid/app/Activity;I)I

    move-result p1

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6e

    .line 996
    :cond_6d
    goto :goto_74

    .line 994
    :catchall_6e
    move-exception p1

    .line 995
    const-string v0, "music_player_info"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 997
    :goto_74
    return-void
.end method
