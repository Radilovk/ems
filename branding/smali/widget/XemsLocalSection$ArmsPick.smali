.class final Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;
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
    name = "ArmsPick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final mode:Ljava/lang/String;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;->a:Landroid/app/Activity;

    .line 183
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;->root:Landroid/view/View;

    .line 184
    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;->mode:Ljava/lang/String;

    .line 185
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;->mode:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->setArmsMode(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$400(Landroid/app/Activity;Landroid/view/View;)V

    .line 191
    return-void
.end method
