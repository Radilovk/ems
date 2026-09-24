.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;->post(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 420
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    iput-boolean p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;->val$ok:Z

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;->val$ok:Z

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$8;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;->done(ZLjava/lang/String;)V

    .line 424
    return-void
.end method
