.class public final synthetic Lcom/isaigu/gymapp/train/utils/-$$Lambda$OperationUtil$99fDtgBA0OnvOfah7stLVICo_PU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/-$$Lambda$OperationUtil$99fDtgBA0OnvOfah7stLVICo_PU;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/-$$Lambda$OperationUtil$99fDtgBA0OnvOfah7stLVICo_PU;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/-$$Lambda$OperationUtil$99fDtgBA0OnvOfah7stLVICo_PU;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/-$$Lambda$OperationUtil$99fDtgBA0OnvOfah7stLVICo_PU;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->lambda$settingAllUser$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V

    return-void
.end method
