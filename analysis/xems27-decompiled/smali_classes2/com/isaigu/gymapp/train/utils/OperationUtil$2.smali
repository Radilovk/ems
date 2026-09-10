.class final Lcom/isaigu/gymapp/train/utils/OperationUtil$2;
.super Ljava/lang/Object;
.source "OperationUtil.java"

# interfaces
.implements Lme/weyye/hipermission/PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/OperationUtil;->requestPermission(Lcom/isaigu/gymapp/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/isaigu/gymapp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$2;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 169
    const-string v0, "onClose"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onDeny(Ljava/lang/String;I)V
    .locals 2
    .param p1, "permisson"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeny: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/OperationUtil$2;->val$activity:Lcom/isaigu/gymapp/BaseActivity;

    const v1, 0x7f0d006b

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->showTips(Lcom/isaigu/gymapp/BaseActivity;I)V

    .line 179
    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 173
    const-string v0, "onFinish"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onGuarantee(Ljava/lang/String;I)V
    .locals 2
    .param p1, "permisson"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGuarantee: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 183
    return-void
.end method
