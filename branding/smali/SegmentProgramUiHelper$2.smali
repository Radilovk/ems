.class Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;
.super Ljava/lang/Object;
.source "SegmentProgramUiHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->bind(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

.field final synthetic val$enableSwitch:Landroid/widget/Switch;

.field final synthetic val$summary:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;->val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;->val$enableSwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;->val$summary:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 74
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;->val$dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;->val$enableSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper$2;->val$summary:Landroid/widget/TextView;

    # invokes: Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->openEditor(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/dialog/SegmentProgramUiHelper;->access$100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/widget/Switch;Landroid/widget/TextView;)V

    .line 75
    return-void
.end method
