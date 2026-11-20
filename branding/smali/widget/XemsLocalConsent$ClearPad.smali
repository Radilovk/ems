.class final Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;
.super Ljava/lang/Object;
.source "XemsLocalConsent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClearPad"
.end annotation


# instance fields
.field private final pad:Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;

.field private final sign:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;->pad:Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;

    .line 361
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;->sign:Landroid/view/View;

    .line 362
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;->pad:Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalConsent$SignPad;->clear()V

    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;->sign:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$ClearPad;->sign:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 369
    return-void
.end method
