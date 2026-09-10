.class Lcom/isaigu/gymapp/UIFactory$2$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "UIFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/UIFactory$2;->customLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/UIFactory$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/UIFactory$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/UIFactory$2;

    .line 41
    iput-object p1, p0, Lcom/isaigu/gymapp/UIFactory$2$1;->this$0:Lcom/isaigu/gymapp/UIFactory$2;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 43
    invoke-static {}, Lcom/isaigu/gymapp/UIFactory;->access$000()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->returnData()V

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/UIFactory;->access$000()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->dismiss()V

    .line 45
    return-void
.end method
