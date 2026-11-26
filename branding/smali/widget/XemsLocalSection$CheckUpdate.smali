.class final Lcom/isaigu/gymapp/widget/XemsLocalSection$CheckUpdate;
.super Ljava/lang/Object;
.source "XemsLocalSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CheckUpdate"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$CheckUpdate;->a:Landroid/app/Activity;

    .line 184
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$CheckUpdate;->status:Landroid/widget/TextView;

    .line 185
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$CheckUpdate;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$CheckUpdate;->status:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->manualCheck(Landroid/app/Activity;Landroid/widget/TextView;)V

    .line 190
    return-void
.end method
