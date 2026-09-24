.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postUpdate(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

.field final synthetic val$err:Ljava/lang/String;

.field final synthetic val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 432
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;->val$err:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;->val$cb:Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$9;->val$err:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;->done(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V

    .line 436
    return-void
.end method
