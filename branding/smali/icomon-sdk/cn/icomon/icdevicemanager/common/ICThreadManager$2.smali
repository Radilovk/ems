.class Lcn/icomon/icdevicemanager/common/ICThreadManager$2;
.super Ljava/lang/Object;
.source "ICThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/common/ICThreadManager;

.field final synthetic val$task:Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/common/ICThreadManager;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager$2;->this$0:Lcn/icomon/icdevicemanager/common/ICThreadManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager$2;->val$task:Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager$2;->val$task:Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;

    .line 108
    invoke-interface {v0}, Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;->onRun()V

    return-void
.end method
