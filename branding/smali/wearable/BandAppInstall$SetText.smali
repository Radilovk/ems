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

.field private final v:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;->v:Landroid/widget/TextView;

    .line 110
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;->s:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method
