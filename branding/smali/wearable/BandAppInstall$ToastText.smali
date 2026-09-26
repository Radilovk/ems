.class final Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;
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
    name = "ToastText"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;

.field private final s:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;->c:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;->s:Ljava/lang/String;

    .line 292
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;->s:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 299
    goto :goto_e

    .line 298
    :catchall_d
    move-exception v0

    .line 300
    :goto_e
    return-void
.end method
