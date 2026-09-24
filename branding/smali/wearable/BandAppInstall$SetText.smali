.class final Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;
.super Ljava/lang/Object;
.source "BandAppInstall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandAppInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SetText"
.end annotation


# instance fields
.field private final s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;->s:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 238
    # getter for: Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusView:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->access$400()Landroid/widget/TextView;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 240
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_11
    return-void
.end method
