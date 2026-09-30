.class public final Lcom/isaigu/gymapp/ai/WorkoutsUi;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;,
        Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;
    }
.end annotation


# static fields
.field static final A_ADD_CLEAN:I = 0x14

.field static final A_ADD_EX:I = 0x8

.field static final A_ADD_REST:I = 0x13

.field static final A_ADVANCED:I = 0x1a

.field static final A_BACK:I = 0xc

.field static final A_COPY:I = 0x7

.field static final A_DELETE:I = 0x6

.field static final A_DELETE_SURE:I = 0x12

.field static final A_GOAL:I = 0xd

.field static final A_NEW:I = 0x1

.field static final A_NEW_PASSIVE:I = 0x19

.field static final A_NO_EX:I = 0x17

.field static final A_OPEN:I = 0x2

.field static final A_PARAM:I = 0x18

.field static final A_PICKED:I = 0x9

.field static final A_PICK_DONE:I = 0xa

.field static final A_PRESET:I = 0x3

.field static final A_REPLACE:I = 0x16

.field static final A_SAVE:I = 0x4

.field static final A_START_AI:I = 0x5

.field static final A_START_MAP:I = 0x15

.field static final A_ZONE:I = 0xf

.field static final EDIT:I = 0x1

.field static final GOALS:[Ljava/lang/String;

.field static final LIST:I = 0x0

.field static final PICK:I = 0x2

.field static final P_HZ:I = 0x1

.field static final P_OFF:I = 0x4

.field static final P_ON:I = 0x3

.field static final P_PW:I = 0x2

.field static final P_REL:I = 0x5

.field static final P_REPS:I

.field static final ZONES:[Ljava/lang/String;

.field private static advanced:Z

.field private static confirmDelete:Z

.field private static dirty:Z

.field private static editing:Lcom/isaigu/gymapp/ai/Workout;

.field private static goalTouched:Z

.field private static host:Landroid/app/Activity;

.field private static mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

.field private static panel:Landroid/widget/LinearLayout;

.field private static pickGrid:Landroid/widget/LinearLayout;

.field private static preview:Ljava/lang/String;

.field private static query:Ljava/lang/String;

.field private static replaceIndex:I

.field private static saveBtn:Landroid/widget/TextView;

.field private static screen:I

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static summary:Landroid/widget/TextView;

.field private static zone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "all"

    aput-object v1, v0, v3

    const-string v1, "abs"

    aput-object v1, v0, v4

    const-string v1, "glutes"

    aput-object v1, v0, v5

    const-string v1, "legs"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "back"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "chest"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "arms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "shoulders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "stretch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    .line 68
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "tone"

    aput-object v1, v0, v3

    const-string v1, "fat"

    aput-object v1, v0, v4

    const-string v1, "passive"

    aput-object v1, v0, v5

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    .line 76
    const-string v0, "all"

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    return p0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/Workout;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    return-object p0
.end method

.method static act(Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;I)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 876
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 877
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    packed-switch v0, :pswitch_data_22c

    .line 1030
    :cond_12
    :goto_12
    :pswitch_12
    return-void

    .line 880
    :pswitch_13
    new-instance v5, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 881
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 882
    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v6, 0x19

    if-ne v0, v6, :cond_52

    const-string v0, "passive"

    :goto_26
    iput-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 883
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 884
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->clean()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_37
    sput-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 887
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 888
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalTouched:Z

    .line 889
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 890
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 891
    sput v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 892
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v1

    :goto_4e
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 882
    :cond_52
    const-string v0, "tone"

    goto :goto_26

    :cond_55
    move v0, v2

    .line 892
    goto :goto_4e

    .line 896
    :pswitch_57
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 897
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 898
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 899
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalTouched:Z

    .line 900
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 901
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 905
    :pswitch_75
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->presetAt(ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 906
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 907
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto :goto_12

    .line 910
    :pswitch_81
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->newId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (\u043c\u043e\u044f)"

    const-string v5, " (mine)"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/Workout;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 911
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 912
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 916
    :pswitch_b1
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    if-ne v0, v1, :cond_cc

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_cc

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_cc

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cc

    .line 917
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 919
    :cond_cc
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 922
    :pswitch_d1
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 923
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 926
    :pswitch_d9
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 927
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 930
    :pswitch_e0
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 931
    sput-boolean v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    .line 932
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 935
    :pswitch_ee
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    aget-object v2, v2, p1

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 936
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalTouched:Z

    .line 937
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 938
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 941
    :pswitch_ff
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-nez v0, :cond_10a

    :goto_103
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    .line 942
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    :cond_10a
    move v1, v3

    .line 941
    goto :goto_103

    .line 946
    :pswitch_10c
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 947
    sput v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 948
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 951
    :pswitch_115
    sput-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 952
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_128

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    :goto_121
    sput v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 953
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    :cond_128
    move v0, v4

    .line 952
    goto :goto_121

    .line 956
    :pswitch_12a
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v2

    .line 957
    if-ltz v2, :cond_12

    .line 958
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    iput-object v7, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 959
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 960
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 961
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 962
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 968
    :pswitch_14d
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->insertAt()I

    move-result v2

    .line 969
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    iget v0, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->code:I

    const/16 v4, 0x13

    if-ne v0, v4, :cond_171

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    :goto_15f
    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 970
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 971
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 972
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 973
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 969
    :cond_171
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->clean()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    goto :goto_15f

    .line 977
    :pswitch_178
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v0, v0, p1

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    .line 978
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    goto/16 :goto_12

    .line 981
    :pswitch_183
    invoke-static {v5, p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->picked(Landroid/content/Context;Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;)V

    goto/16 :goto_12

    .line 984
    :pswitch_188
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 985
    sput v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 986
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 987
    if-ltz v0, :cond_12

    .line 988
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 989
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    goto/16 :goto_12

    .line 994
    :pswitch_19b
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_1a5

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v4

    .line 995
    :cond_1a5
    if-ltz v4, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_12

    .line 998
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 999
    iget v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-static {v0, v2, p1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->step(Lcom/isaigu/gymapp/ai/Workout$Block;II)V

    .line 1000
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    iget v3, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->valueOf(Lcom/isaigu/gymapp/ai/Workout$Block;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1002
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->invalidate()V

    .line 1003
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshFooter()V

    goto/16 :goto_12

    .line 1007
    :pswitch_1d7
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_1ee

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_1ee

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ee

    .line 1008
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1010
    :cond_1ee
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->useWorkout(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1011
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 1012
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    .line 1013
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V

    goto/16 :goto_12

    .line 1016
    :pswitch_1fd
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    if-nez v0, :cond_214

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_214

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_214

    .line 1017
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->save(Landroid/content/Context;)V

    .line 1019
    :cond_214
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v0

    .line 1020
    if-eqz v0, :cond_227

    .line 1021
    invoke-static {v5, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 1023
    :cond_227
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->close()V

    goto/16 :goto_12

    .line 877
    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_57
        :pswitch_75
        :pswitch_d1
        :pswitch_1d7
        :pswitch_d9
        :pswitch_81
        :pswitch_10c
        :pswitch_183
        :pswitch_188
        :pswitch_12
        :pswitch_b1
        :pswitch_ee
        :pswitch_12
        :pswitch_178
        :pswitch_12
        :pswitch_12
        :pswitch_e0
        :pswitch_14d
        :pswitch_14d
        :pswitch_1fd
        :pswitch_115
        :pswitch_12a
        :pswitch_19b
        :pswitch_13
        :pswitch_ff
    .end packed-switch
.end method

.method private static addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 375
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 376
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    invoke-direct {v1, p3, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 378
    if-nez p4, :cond_25

    .line 379
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 381
    :cond_25
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    return-void
.end method

.method static autoName(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1115
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->derivedFocus()Ljava/util/List;

    move-result-object v1

    .line 1116
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1117
    :cond_11
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "d.MM"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430 "

    const-string v3, "Procedure "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1119
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1125
    :cond_42
    :goto_42
    return-object v0

    .line 1118
    :cond_43
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v3, "Workout "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1121
    :cond_4c
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_42

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0438 "

    const-string v3, " and "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42
.end method

.method static close()V
    .registers 1

    .prologue
    .line 1129
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 1131
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_f

    .line 1135
    :cond_b
    :goto_b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 1136
    return-void

    .line 1132
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private static countIn(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 750
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 751
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_27
    move v1, v0

    .line 753
    goto :goto_a

    .line 754
    :cond_29
    return v1

    :cond_2a
    move v0, v1

    goto :goto_27
.end method

.method static fillGrid(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 709
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    .line 745
    :cond_b
    :goto_b
    return-void

    .line 712
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 713
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->filtered(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 714
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 715
    const-string v0, "\u041d\u0438\u0449\u043e \u043d\u0435 \u0441\u044a\u0432\u043f\u0430\u0434\u0430."

    const-string v2, "Nothing matches."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 716
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 717
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 718
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 722
    :cond_45
    const/4 v0, 0x0

    move v3, v1

    .line 723
    :goto_47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_93

    .line 724
    rem-int/lit8 v2, v3, 0x4

    if-nez v2, :cond_b9

    .line 725
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 726
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    if-nez v3, :cond_90

    move v0, v1

    :goto_5a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    :goto_61
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 729
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;

    move-result-object v5

    .line 730
    new-instance v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x9

    invoke-direct {v6, v7, v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 731
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 732
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v0, v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 734
    rem-int/lit8 v6, v3, 0x4

    if-lez v6, :cond_89

    .line 735
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 737
    :cond_89
    invoke-virtual {v2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    add-int/lit8 v3, v3, 0x1

    move-object v0, v2

    goto :goto_47

    .line 726
    :cond_90
    const/16 v0, 0xa

    goto :goto_5a

    .line 739
    :cond_93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v3, v2, 0x4

    move v2, v1

    .line 740
    :goto_9e
    if-ge v2, v3, :cond_b

    if-eqz v0, :cond_b

    .line 741
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 742
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 743
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_b9
    move-object v2, v0

    goto :goto_61
.end method

.method static fillPanel(Landroid/content/Context;)V
    .registers 16

    .prologue
    const/16 v14, 0x10

    const/4 v13, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 434
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_14

    .line 525
    :cond_13
    :goto_13
    return-void

    .line 437
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 438
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v5

    .line 439
    if-ltz v5, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_13

    .line 442
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 443
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 444
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 445
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 446
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 448
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 449
    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 450
    const v1, -0xedebe6

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v1, v8, v4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_245

    .line 452
    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 453
    const-wide/16 v8, 0x0

    iget v10, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 454
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 455
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x43160000    # 150.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x42e00000    # 112.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    :goto_93
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 468
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v8, v1, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 469
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v1, :cond_299

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v1

    .line 470
    :goto_ad
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_29c

    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v9, "Rest"

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    :goto_bb
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 473
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x41900000    # 18.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v5, v10, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v5, v4, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    if-nez v6, :cond_13a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-nez v2, :cond_13a

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v2

    if-nez v2, :cond_13a

    .line 477
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v2

    if-eqz v2, :cond_2ba

    const-string v2, "\u0421\u043c\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v5, "Change exercise"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_10a
    invoke-static {p0, v2, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 479
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v10, 0x16

    invoke-direct {v5, v10, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 481
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 482
    const-string v2, "\u0411\u0435\u0437"

    const-string v5, "None"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 483
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v10, 0x17

    invoke-direct {v5, v10, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    :cond_13a
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 489
    const-string v2, "\u0411\u0435\u0437 \u0442\u043e\u043a. \u0414\u044a\u043b\u0436\u0438\u043d\u0430\u0442\u0430 \u0435 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0437\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430."

    const-string v5, "No current. Its length is the rest time."

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    :goto_14b
    const/high16 v5, 0x41500000    # 13.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 488
    invoke-static {p0, v2, v5, v9, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 492
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v2, v4, v5, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 493
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    if-nez v6, :cond_231

    .line 497
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 498
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 499
    if-eqz v1, :cond_325

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v1

    if-eqz v1, :cond_325

    move v1, v3

    .line 500
    :goto_177
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v5

    if-eqz v5, :cond_328

    const-string v1, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v5, "seconds"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    :goto_185
    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 500
    invoke-static {p0, v2, v1, v5, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 502
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_1c5

    .line 503
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-eqz v1, :cond_34e

    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441 \u25be"

    const-string v5, "Impulse \u25be"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_19c
    invoke-static {p0, v1, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 505
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v6, 0x1a

    invoke-direct {v5, v6, v4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42380000    # 46.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v4, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    :cond_1c5
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 510
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-nez v1, :cond_231

    sget-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->advanced:Z

    if-eqz v1, :cond_231

    .line 511
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 512
    const-string v2, "Hz"

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {p0, v1, v2, v5, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 513
    const-string v2, "\u00b5s"

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    const/4 v6, 0x2

    invoke-static {p0, v1, v2, v5, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 514
    const-string v2, "\u0441\u0438\u043b\u0430, %"

    const-string v5, "strength, %"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    const/4 v6, 0x5

    invoke-static {p0, v1, v2, v5, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 515
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 516
    const-string v5, "\u0438\u043c\u043f\u0443\u043b\u0441, \u0441"

    const-string v6, "impulse, s"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-static {p0, v2, v5, v6, v13}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 517
    const-string v5, "\u043f\u0430\u0443\u0437\u0430, \u0441"

    const-string v6, "pause, s"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    const/4 v6, 0x4

    invoke-static {p0, v2, v5, v0, v6}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 518
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    :cond_231
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_13

    .line 457
    :cond_245
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 458
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_28f

    const v1, -0xa5a095

    :goto_253
    const/high16 v9, 0x41200000    # 10.0f

    .line 459
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    .line 458
    invoke-static {v1, v9, v4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42dc0000    # 110.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v1

    if-eqz v1, :cond_296

    const/high16 v1, 0x41600000    # 14.0f

    :goto_271
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v9, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 461
    invoke-virtual {v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 463
    const/high16 v1, 0x42e00000    # 112.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_93

    .line 458
    :cond_28f
    iget v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v1

    goto :goto_253

    .line 460
    :cond_296
    const/high16 v1, 0x428c0000    # 70.0f

    goto :goto_271

    .line 469
    :cond_299
    const/4 v1, 0x0

    goto/16 :goto_ad

    .line 471
    :cond_29c
    if-eqz v1, :cond_2a4

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bb

    :cond_2a4
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v2, :cond_2b0

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bb

    :cond_2b0
    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 \u0431\u0435\u0437 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v9, "Impulse, no exercise"

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bb

    .line 478
    :cond_2ba
    const-string v2, "\u0421\u043b\u043e\u0436\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v5, "Set an exercise"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_10a

    .line 491
    :cond_2c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u0441 \u00b7 "

    const-string v9, " s \u00b7 "

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Hz \u00b7 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u00b5s \u00b7 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u0441 \u00b7 \u0441\u0438\u043b\u0430 "

    const-string v9, " s \u00b7 strength "

    .line 491
    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_14b

    :cond_325
    move v1, v4

    .line 499
    goto/16 :goto_177

    .line 500
    :cond_328
    if-eqz v1, :cond_334

    const-string v1, "\u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0438\u044f"

    const-string v5, "holds"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_185

    .line 501
    :cond_334
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->hasExercise()Z

    move-result v1

    if-eqz v1, :cond_344

    const-string v1, "\u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v5, "repetitions"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_185

    :cond_344
    const-string v1, "\u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v5, "impulses"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_185

    .line 503
    :cond_34e
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441 \u25b8"

    const-string v5, "Impulse \u25b8"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_19c
.end method

.method private static filtered(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 687
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 688
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 689
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 690
    const-string v1, "all"

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->zone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 693
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->bg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->en:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->tg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 694
    const/4 v1, 0x1

    .line 695
    array-length v8, v5

    move v3, v2

    :goto_78
    if-ge v3, v8, :cond_89

    aget-object v9, v5, v3

    .line 696
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8f

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8f

    move v1, v2

    .line 701
    :cond_89
    if-eqz v1, :cond_1e

    .line 702
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 695
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 705
    :cond_92
    return-object v4
.end method

.method static go(I)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    sput p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    .line 137
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 139
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 140
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 141
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    .line 142
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    .line 143
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 144
    sput-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 145
    if-nez p0, :cond_3b

    .line 146
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenList(Landroid/content/Context;)V

    .line 152
    :goto_29
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 153
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 154
    return-void

    .line 147
    :cond_3b
    const/4 v1, 0x1

    if-ne p0, v1, :cond_42

    .line 148
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenEdit(Landroid/content/Context;)V

    goto :goto_29

    .line 150
    :cond_42
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screenPick(Landroid/content/Context;)V

    goto :goto_29
.end method

.method static goalColor(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 112
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    .line 114
    :goto_a
    return v0

    .line 113
    :cond_b
    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, -0xc28401

    goto :goto_a

    .line 114
    :cond_17
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_a
.end method

.method static goalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Fat loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_10
    return-object v0

    .line 107
    :cond_11
    const-string v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v1, "Procedure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 108
    :cond_22
    const-string v0, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Toning"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private static grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 204
    const/4 v0, 0x0

    move v2, v3

    .line 205
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4f

    .line 206
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_6d

    .line 207
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 208
    if-nez v2, :cond_4c

    const/16 v0, 0x8

    :goto_1a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    :goto_21
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;

    move-result-object v0

    .line 211
    new-instance v4, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    add-int v5, p4, v2

    invoke-direct {v4, p3, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 213
    rem-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_45

    .line 214
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 216
    :cond_45
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_8

    .line 208
    :cond_4c
    const/16 v0, 0xc

    goto :goto_1a

    .line 218
    :cond_4f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v6, :cond_6c

    if-eqz v0, :cond_6c

    .line 219
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 220
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 221
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_6c
    return-void

    :cond_6d
    move-object v1, v0

    goto :goto_21
.end method

.method private static insertAt()I
    .registers 1

    .prologue
    .line 871
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    .line 872
    :goto_a
    if-ltz v0, :cond_11

    add-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    .line 871
    :cond_f
    const/4 v0, -0x1

    goto :goto_a

    .line 872
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_e
.end method

.method private static legend(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v6, 0x5

    const/4 v11, 0x1

    const/high16 v10, 0x41380000    # 11.5f

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 386
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 387
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 388
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 389
    new-array v4, v6, [I

    fill-array-data v4, :array_de

    .line 390
    new-array v5, v6, [Ljava/lang/String;

    const-string v0, "\u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v2, "drainage"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "\u043c\u0430\u0441\u0430\u0436"

    const-string v2, "massage"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    const/4 v0, 0x2

    const-string v2, "\u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    const-string v6, "endurance"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    const-string v2, "\u0441\u0438\u043b\u0430"

    const-string v6, "strength"

    .line 391
    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x4

    const-string v2, "\u043c\u043e\u0449\u043d\u043e\u0441\u0442"

    const-string v6, "power"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    move v0, v1

    .line 392
    :goto_64
    array-length v2, v4

    if-ge v0, v2, :cond_bd

    .line 393
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 394
    aget v2, v4, v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->colorFor(I)I

    move-result v2

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v2, v7, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 396
    if-nez v0, :cond_ba

    const/4 v2, 0x0

    :goto_90
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 397
    invoke-virtual {v3, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v5, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v2, v10, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 399
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 396
    :cond_ba
    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_90

    .line 401
    :cond_bd
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    const-string v0, "\u0432\u0438\u0441\u043e\u0447\u0438\u043d\u0430 = \u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 (\u00b5s)"

    const-string v2, "height = depth (\u00b5s)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v10, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    return-object v3

    .line 389
    :array_de
    .array-data 4
        0x5
        0x14
        0x2d
        0x55
        0x6e
    .end array-data
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 122
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 123
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->sync(Landroid/content/Context;Z)V

    .line 124
    sput-object p0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->host:Landroid/app/Activity;

    .line 125
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 126
    :cond_1a
    const-string v0, ""

    const-string v1, ""

    const/16 v2, 0x49c

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 127
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 129
    :cond_2d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    .line 133
    :goto_31
    return-void

    .line 130
    :catch_32
    move-exception v0

    .line 131
    const-string v1, "WorkoutsUi.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method

.method private static param(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;II)V
    .registers 13

    .prologue
    .line 529
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 530
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 531
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 532
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 533
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 535
    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x26

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 536
    const-string v3, "+"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x26

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 537
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 538
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 539
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v6, 0x18

    invoke-direct {v5, v6, p4}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 540
    iput-object v4, v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->value:Landroid/widget/TextView;

    .line 541
    const/4 v6, -0x1

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 542
    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 543
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 544
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    const/high16 v1, 0x41300000    # 11.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 548
    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 549
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 551
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 552
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    return-void
.end method

.method private static pickCell(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/4 v9, 0x1

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v7, 0x0

    .line 758
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v3

    .line 759
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 760
    if-lez v3, :cond_e3

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const v2, 0x3e23d70a    # 0.16f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    :goto_1f
    const/high16 v1, 0x41600000    # 14.0f

    .line 761
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v5, v1

    if-lez v3, :cond_e7

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    move v2, v1

    :goto_2b
    if-lez v3, :cond_ec

    const/high16 v1, 0x40000000    # 2.0f

    :goto_2f
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 760
    invoke-static {v0, v5, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 763
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 764
    const v0, -0xedebe6

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    new-instance v0, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 766
    invoke-virtual {v0, v7}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setGlow(Z)V

    .line 767
    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setStill(Z)V

    .line 768
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 769
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    if-lez v3, :cond_b5

    .line 771
    if-le v3, v9, :cond_f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u00d7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_97
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 772
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x35

    invoke-direct {v2, v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 774
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 775
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 776
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    :cond_b5
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 779
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 780
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 781
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 782
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 783
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    const/high16 v1, 0x41380000    # 11.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 784
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 785
    return-object v4

    .line 760
    :cond_e3
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    goto/16 :goto_1f

    .line 761
    :cond_e7
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v2, v1

    goto/16 :goto_2b

    :cond_ec
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_2f

    .line 771
    :cond_f0
    const-string v0, "\u2713"

    goto :goto_97
.end method

.method private static picked(Landroid/content/Context;Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1045
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v3

    .line 1046
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_4b

    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    iget v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-ltz v0, :cond_4b

    .line 1047
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1048
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 1049
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1050
    const/16 v2, 0x64

    iput v2, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 1051
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 1053
    :cond_38
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1054
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1055
    const/4 v2, -0x1

    sput v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    .line 1056
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1057
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 1058
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 1088
    :goto_4a
    return-void

    .line 1061
    :cond_4b
    iget v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->arg:I

    if-gez v0, :cond_d4

    .line 1062
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5a
    if-ltz v2, :cond_a6

    .line 1063
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1064
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 1065
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1066
    if-lez v2, :cond_a6

    add-int/lit8 v0, v2, -0x1

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a6

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1067
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1072
    :cond_a6
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->countIn(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d2

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    :goto_b0
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1084
    :cond_b2
    :goto_b2
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1085
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 1086
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->go(I)V

    .line 1087
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4a

    .line 1062
    :cond_ce
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5a

    .line 1072
    :cond_d2
    const/4 v0, 0x0

    goto :goto_b0

    .line 1074
    :cond_d4
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    if-eqz v3, :cond_146

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;

    move-object v2, v0

    :goto_db
    if-eqz v3, :cond_14e

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->isHold()Z

    move-result v0

    if-eqz v0, :cond_14e

    move v0, v1

    :goto_e4
    invoke-static {v4, v2, v0}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v2

    .line 1075
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12b

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v0

    if-nez v0, :cond_12b

    .line 1076
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    sget-object v4, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->restAfter(Lcom/isaigu/gymapp/ai/Workout$Block;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    :cond_12b
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    .line 1080
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalTouched:Z

    if-nez v0, :cond_b2

    .line 1081
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->suggestedGoal()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    goto/16 :goto_b2

    .line 1074
    :cond_146
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_db

    :cond_14e
    const/4 v0, 0x0

    goto :goto_e4
.end method

.method private static presetAt(ILcom/isaigu/gymapp/ai/WorkoutsUi$Act;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 7

    .prologue
    .line 1034
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v0

    .line 1035
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 1038
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_29

    move-object v1, v2

    :goto_25
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_29
    move-object v1, v3

    goto :goto_25

    .line 1040
    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_38

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    :goto_37
    return-object v0

    :cond_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    goto :goto_37
.end method

.method private static previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 790
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    move-result-object v1

    .line 791
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 792
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 793
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 794
    const v3, -0xedebe6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 795
    new-instance v3, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 796
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 797
    invoke-virtual {v3, p1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 798
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x432a0000    # 170.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x43000000    # 128.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 801
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v0, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 802
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->name()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    const/high16 v4, 0x41900000    # 18.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 803
    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howText()Ljava/lang/String;

    move-result-object v0

    :goto_6d
    const/high16 v1, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 804
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v7, v1, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 805
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 806
    const-string v0, "\u041c\u0430\u0445\u043d\u0438 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0441\u0435\u0440\u0438\u044f"

    const-string v1, "Remove the last set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 807
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    .line 808
    iput-object p1, v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;->ex:Ljava/lang/String;

    .line 809
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    return-object v2

    .line 802
    :cond_ba
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    .line 803
    :cond_bf
    const-string v0, ""

    goto :goto_6d
.end method

.method static refreshFooter()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 611
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v1, :cond_9

    sget v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->screen:I

    if-eq v1, v0, :cond_a

    .line 620
    :cond_9
    :goto_9
    return-void

    .line 614
    :cond_a
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_39

    .line 615
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v3, "Save"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    :goto_27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 617
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 619
    :cond_39
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    goto :goto_9

    .line 616
    :cond_3d
    const/4 v0, 0x0

    goto :goto_27

    .line 617
    :cond_3f
    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_36
.end method

.method static refreshSummary()V
    .registers 5

    .prologue
    .line 407
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    if-nez v0, :cond_9

    .line 430
    :cond_8
    :goto_8
    return-void

    .line 410
    :cond_9
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 412
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0431\u043b\u043e\u043a\u0430 \u00b7 "

    const-string v3, " blocks \u00b7 "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->mapMinutes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_44
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->longerThanSession()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u00b7  \u043f\u043e-\u0434\u044a\u043b\u0433\u0430 \u043e\u0442 \u0435\u0434\u043d\u0430 AI \u0441\u0435\u0441\u0438\u044f \u2014 \u0449\u0435 \u043c\u0438\u043d\u0430\u0442 \u0441\u0435\u0440\u0438\u0438\u0442\u0435, \u043a\u043e\u0438\u0442\u043e \u0441\u0435 \u043f\u043e\u0431\u0435\u0440\u0430\u0442"

    const-string v2, "  \u00b7  longer than one AI session \u2014 the sets that fit are done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    :goto_6a
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 415
    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->derivedFocus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9d

    const-string v1, ""

    :goto_91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    :cond_9d
    const-string v1, " \u00b7 "

    goto :goto_91

    .line 419
    :cond_a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  \u2014  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_be
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441\u0435\u0440\u0438\u0438 \u00b7 \u2248 "

    const-string v3, " sets \u00b7 \u2248 "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/Workout;->aiMinutes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 419
    :cond_f0
    const-string v0, ""

    goto :goto_be

    .line 427
    :cond_f3
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6a
.end method

.method private static save(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1106
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 1107
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->autoName(Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 1109
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    .line 1111
    return-void
.end method

.method private static screenEdit(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/high16 v13, 0x42580000    # 54.0f

    const/4 v1, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 254
    sget-object v6, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    .line 255
    iget-boolean v7, v6, Lcom/isaigu/gymapp/ai/Workout;->preset:Z

    .line 256
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    if-eqz v7, :cond_39d

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    :goto_13
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v7, :cond_3c3

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u043a\u043e\u043f\u0438\u0440\u0430\u0439 \u044f, \u0437\u0430 \u0434\u0430 \u044f \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u0448."

    const-string v8, "Ready map \u2014 copy it to change it."

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 264
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 265
    const/16 v0, 0x10

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 266
    if-nez v7, :cond_3f3

    .line 267
    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 269
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_3d9

    const-string v0, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u041b\u0435\u043a \u0434\u0440\u0435\u043d\u0430\u0436\u201c"

    const-string v10, "Name, e.g. \u201cLight drainage\u201d"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_58
    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 272
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 273
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 274
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 275
    const/16 v0, 0x4001

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 276
    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 277
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41300000    # 11.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 279
    new-instance v0, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi$NameWatch;-><init>()V

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v0, v3, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->GOALS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v1

    .line 282
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_3e3

    move v0, v1

    .line 283
    :goto_dd
    new-instance v10, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v11, 0xd

    invoke-direct {v10, v11, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-static {p0, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 284
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x43dc0000    # 440.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 286
    invoke-virtual {v8, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :goto_ff
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const-string v0, ""

    const/high16 v8, 0x41580000    # 13.5f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    .line 293
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->summary:Landroid/widget/TextView;

    const/16 v8, 0xa

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->refreshSummary()V

    .line 297
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    const v0, -0xedebe6

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v0, v9, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 301
    new-instance v0, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    .line 302
    sget-object v9, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    if-nez v7, :cond_408

    move v0, v2

    :goto_161
    invoke-virtual {v9, v6, v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 303
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v9, Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;

    invoke-direct {v9}, Lcom/isaigu/gymapp/ai/WorkoutsUi$MapListener;-><init>()V

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setListener(Lcom/isaigu/gymapp/ai/ImpulseMapView$Listener;)V

    .line 304
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x437a0000    # 250.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->legend(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 308
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_40b

    .line 309
    const-string v0, "\u041f\u0440\u0430\u0437\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u0441\u043b\u043e\u0436\u0438 \u043f\u044a\u0440\u0432\u0438\u044f \u0431\u043b\u043e\u043a."

    const-string v8, "An empty map \u2014 place the first block."

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_1a9
    const/high16 v8, 0x41700000    # 15.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 308
    invoke-static {p0, v0, v8, v9, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 312
    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v0, v3, v8, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 314
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    :cond_1c6
    if-nez v7, :cond_209

    .line 318
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 319
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_1df

    .line 320
    const-string v0, "+  \u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435"

    const-string v9, "+  Exercise"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x8

    invoke-static {p0, v8, v0, v9, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 322
    :cond_1df
    const-string v0, "+  \u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v9, "+  Rest"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x13

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_415

    move v0, v2

    :goto_1f0
    invoke-static {p0, v8, v9, v10, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 323
    const-string v0, "+  \u041d\u043e\u0432 \u0431\u043b\u043e\u043a"

    const-string v9, "+  New block"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x14

    invoke-static {p0, v8, v0, v9, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 324
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    :cond_209
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    .line 328
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->panel:Landroid/widget/LinearLayout;

    const/16 v8, 0xc

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->getSelected()I

    move-result v0

    if-gez v0, :cond_231

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_231

    if-nez v7, :cond_231

    .line 330
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->mapView:Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->select(I)V

    .line 332
    :cond_231
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillPanel(Landroid/content/Context;)V

    .line 335
    const-string v0, "\u2039  \u041d\u0430\u0437\u0430\u0434"

    const-string v5, "\u2039  Back"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 336
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v8, 0xc

    invoke-direct {v5, v8, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    if-nez v7, :cond_29b

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_29b

    .line 339
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_418

    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439 \u0437\u0430\u0432\u0438\u043d\u0430\u0433\u0438"

    const-string v5, "Delete for good"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_272
    const/4 v5, 0x3

    .line 339
    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 341
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->confirmDelete:Z

    if-eqz v0, :cond_422

    const/16 v0, 0x12

    :goto_284
    invoke-direct {v8, v0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_29b
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    if-eqz v7, :cond_425

    const-string v0, "\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v5, "Copy and change"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2b6
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 348
    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    if-eqz v7, :cond_43d

    const/4 v0, 0x7

    :goto_2bf
    invoke-direct {v8, v0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    if-nez v7, :cond_2d3

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_440

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_440

    :cond_2d3
    move v0, v2

    :goto_2d4
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 350
    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_443

    move v0, v4

    :goto_2de
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 351
    if-eqz v7, :cond_448

    const/4 v0, 0x0

    :goto_2e4
    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->saveBtn:Landroid/widget/TextView;

    .line 352
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x43520000    # 210.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44b

    move v0, v2

    .line 354
    :goto_305
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v5

    if-eqz v5, :cond_44e

    const-string v5, "\u25b6  \u041f\u0443\u0441\u043d\u0438 \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v7, "\u25b6  Run the map"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 355
    :goto_313
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v7

    if-eqz v7, :cond_31a

    move v1, v3

    .line 354
    :cond_31a
    invoke-static {p0, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 356
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v7, 0x15

    invoke-direct {v5, v7, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 358
    if-eqz v0, :cond_458

    move v0, v4

    :goto_32e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 359
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_45d

    const/high16 v0, 0x43820000    # 260.0f

    :goto_33b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 361
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-nez v0, :cond_39c

    .line 363
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v0

    if-lez v0, :cond_461

    .line 364
    :goto_361
    const-string v0, "\u25b6  \u0421 AI"

    const-string v1, "\u25b6  With AI"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 365
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/4 v5, 0x5

    invoke-direct {v1, v5, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 367
    if-eqz v2, :cond_464

    :goto_37b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 368
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 369
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 370
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_39c
    return-void

    .line 256
    :cond_39d
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3a9

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    goto/16 :goto_13

    .line 257
    :cond_3a9
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_3b9

    const-string v0, "\u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v8, "New procedure"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :cond_3b9
    const-string v0, "\u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v8, "New workout"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 259
    :cond_3c3
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3cf

    const-string v0, ""

    goto/16 :goto_24

    :cond_3cf
    const-string v0, "\u0412\u043b\u0430\u0447\u0438 \u0440\u044a\u0431\u0430 \u043d\u0430 \u0431\u043b\u043e\u043a \u0437\u0430 \u0434\u044a\u043b\u0436\u0438\u043d\u0430 \u00b7 \u0437\u0430\u0434\u0440\u044a\u0436, \u0437\u0430 \u0434\u0430 \u0433\u043e \u043f\u0440\u0435\u043c\u0435\u0441\u0442\u0438\u0448"

    const-string v8, "Drag a block\'s edge for length \u00b7 hold it to move"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 271
    :cond_3d9
    const-string v0, "\u0418\u043c\u0435, \u043d\u0430\u043f\u0440. \u201e\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u201c"

    const-string v10, "Name, e.g. \u201cStrong glutes\u201d"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_58

    .line 282
    :cond_3e3
    const-string v0, "fat"

    iget-object v10, v6, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f0

    move v0, v2

    goto/16 :goto_dd

    :cond_3f0
    move v0, v3

    goto/16 :goto_dd

    .line 288
    :cond_3f3
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, v6, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_ff

    :cond_408
    move v0, v3

    .line 302
    goto/16 :goto_161

    .line 310
    :cond_40b
    const-string v0, "\u041f\u0440\u0430\u0437\u043d\u0430 \u043a\u0430\u0440\u0442\u0430 \u2014 \u0434\u043e\u0431\u0430\u0432\u0438 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435."

    const-string v8, "An empty map \u2014 add the first exercise."

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a9

    :cond_415
    move v0, v3

    .line 322
    goto/16 :goto_1f0

    .line 340
    :cond_418
    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v5, "Delete"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_272

    .line 342
    :cond_422
    const/4 v0, 0x6

    goto/16 :goto_284

    .line 347
    :cond_425
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->dirty:Z

    if-eqz v0, :cond_433

    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v5, "Save"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b6

    :cond_433
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u2713"

    const-string v5, "Saved \u2713"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b6

    .line 348
    :cond_43d
    const/4 v0, 0x4

    goto/16 :goto_2bf

    :cond_440
    move v0, v3

    .line 349
    goto/16 :goto_2d4

    .line 350
    :cond_443
    const v0, 0x3f0ccccd    # 0.55f

    goto/16 :goto_2de

    :cond_448
    move-object v0, v5

    .line 351
    goto/16 :goto_2e4

    :cond_44b
    move v0, v3

    .line 353
    goto/16 :goto_305

    .line 355
    :cond_44e
    const-string v5, "\u25b6  \u041f\u043e \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v7, "\u25b6  By the map"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_313

    .line 358
    :cond_458
    const v0, 0x3f0ccccd    # 0.55f

    goto/16 :goto_32e

    .line 359
    :cond_45d
    const/high16 v0, 0x43520000    # 210.0f

    goto/16 :goto_33b

    :cond_461
    move v2, v3

    .line 363
    goto/16 :goto_361

    .line 367
    :cond_464
    const v4, 0x3f0ccccd    # 0.55f

    goto/16 :goto_37b
.end method

.method private static screenList(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v8, 0x42600000    # 56.0f

    const/4 v7, 0x0

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    const-string v2, "Workouts"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    const-string v1, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043a\u0430\u0440\u0442\u0430, \u0437\u0430 \u0434\u0430 \u044f \u0432\u0438\u0434\u0438\u0448 \u0438\u043b\u0438 \u043f\u0443\u0441\u043d\u0435\u0448."

    const-string v2, "Tap a map to see or start it."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 164
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 165
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 166
    const-string v0, "\u0422\u0432\u043e\u0438\u0442\u0435"

    const-string v1, "Yours"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-static {p0, v4, v5, v10, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    .line 169
    :cond_50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 172
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_79

    move-object v1, v2

    :goto_75
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_79
    move-object v1, v3

    goto :goto_75

    .line 174
    :cond_7b
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v1, "Ready \u00b7 with exercises"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 175
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a1

    const/4 v0, 0x6

    :goto_8e
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 174
    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-static {p0, v4, v3, v11, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    .line 177
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 178
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u0438 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v1, "Ready \u00b7 procedures at rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x12

    .line 179
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 178
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v4, v2, v11, v0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->grid(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;II)V

    .line 183
    :cond_ba
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->enabled(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 184
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->pending(Landroid/content/Context;)I

    move-result v1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f \u0432 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0430: "

    const-string v5, "Exercises in the catalog: "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    if-lez v1, :cond_1a5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u043e\u0449\u0435 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0441\u0435 \u0438\u0437\u0442\u0435\u0433\u043b\u044f\u0442"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " more downloading"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    .line 185
    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 188
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 189
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    const-string v0, "+  \u041f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v1, "+  Procedure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v2, 0x19

    invoke-direct {v1, v2, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const-string v1, "+  \u041d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v2, "+  New workout"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 194
    new-instance v2, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    invoke-direct {v2, v9, v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x435c0000    # 220.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void

    .line 175
    :cond_1a1
    const/16 v0, 0x12

    goto/16 :goto_8e

    .line 186
    :cond_1a5
    const-string v0, ""

    goto/16 :goto_113
.end method

.method private static screenPick(Landroid/content/Context;)V
    .registers 13

    .prologue
    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v9, 0x41300000    # 11.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    sget v0, Lcom/isaigu/gymapp/ai/WorkoutsUi;->replaceIndex:I

    if-ltz v0, :cond_d4

    move v0, v1

    .line 643
    :goto_d
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_d7

    const-string v3, "\u0421\u043c\u0435\u043d\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v5, "Change the exercise"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_e1

    const-string v3, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043d\u043e\u0432\u043e\u0442\u043e \u2014 \u0431\u043b\u043e\u043a\u044a\u0442 \u0437\u0430\u043f\u0430\u0437\u0432\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0441\u0438."

    const-string v5, "Tap the new one \u2014 the block keeps its impulse."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2c
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 650
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 652
    sget-object v5, Lcom/isaigu/gymapp/ai/WorkoutsUi;->query:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 653
    const-string v5, "\u0422\u044a\u0440\u0441\u0438: \u043a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u0440\u044a\u0431\u2026"

    const-string v6, "Search: squat, lunge, back\u2026"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 654
    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 655
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 656
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 657
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 658
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 660
    new-instance v5, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/WorkoutsUi$SearchWatch;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 661
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    new-array v5, v1, [Landroid/widget/LinearLayout;

    .line 664
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    move v3, v2

    .line 665
    :goto_a5
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_eb

    .line 666
    sget-object v7, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/isaigu/gymapp/ai/WorkoutsUi;->ZONES:[Ljava/lang/String;

    aget-object v8, v8, v3

    sget-object v9, Lcom/isaigu/gymapp/ai/WorkoutsUi;->zone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 667
    new-instance v8, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v9, 0xf

    invoke-direct {v8, v9, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    aget-object v8, v5, v2

    invoke-static {p0, v8, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 665
    add-int/lit8 v3, v3, 0x1

    goto :goto_a5

    :cond_d4
    move v0, v2

    .line 642
    goto/16 :goto_d

    .line 644
    :cond_d7
    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v5, "Add exercises"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1b

    .line 646
    :cond_e1
    const-string v3, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0434\u043e\u0431\u0430\u0432\u0438\u0448 \u0441\u0435\u0440\u0438\u044f."

    const-string v5, "Tap to add a set."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 670
    :cond_eb
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    if-eqz v3, :cond_107

    .line 673
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->preview:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->previewCard(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    :cond_107
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    .line 676
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->pickGrid:Landroid/widget/LinearLayout;

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->fillGrid(Landroid/content/Context;)V

    .line 679
    if-eqz v0, :cond_15d

    const-string v0, "\u041d\u0430\u0437\u0430\u0434 \u043a\u044a\u043c \u043a\u0430\u0440\u0442\u0430\u0442\u0430"

    const-string v3, "Back to the map"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_125
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 681
    new-instance v3, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi$Act;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    sget-object v1, Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    return-void

    .line 680
    :cond_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u043e \u00b7 "

    const-string v4, "Done \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/WorkoutsUi;->editing:Lcom/isaigu/gymapp/ai/Workout;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0441\u0435\u0440\u0438\u0438"

    const-string v4, " sets"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_125
.end method

.method static step(Lcom/isaigu/gymapp/ai/Workout$Block;II)V
    .registers 8

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 557
    packed-switch p1, :pswitch_data_4a

    .line 574
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    mul-int/lit8 v1, p2, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 577
    :goto_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 578
    return-void

    .line 559
    :pswitch_10
    iget v2, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/Workout$Block;->isRest()Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_18
    mul-int/2addr v0, p2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_c

    :cond_1d
    move v0, v1

    goto :goto_18

    .line 562
    :pswitch_1f
    iget v3, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    if-lez p2, :cond_31

    const/4 v2, 0x0

    :goto_26
    add-int/2addr v2, v4

    const/16 v4, 0x14

    if-ge v2, v4, :cond_33

    :goto_2b
    mul-int v0, p2, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_c

    :cond_31
    const/4 v2, -0x1

    goto :goto_26

    :cond_33
    move v1, v0

    goto :goto_2b

    .line 565
    :pswitch_35
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    mul-int/lit8 v1, p2, 0x19

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_c

    .line 568
    :pswitch_3d
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    goto :goto_c

    .line 571
    :pswitch_43
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    goto :goto_c

    .line 557
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1f
        :pswitch_35
        :pswitch_3d
        :pswitch_43
    .end packed-switch
.end method

.method static valueOf(Lcom/isaigu/gymapp/ai/Workout$Block;I)I
    .registers 3

    .prologue
    .line 581
    packed-switch p1, :pswitch_data_16

    .line 587
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    :goto_5
    return v0

    .line 582
    :pswitch_6
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    goto :goto_5

    .line 583
    :pswitch_9
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    goto :goto_5

    .line 584
    :pswitch_c
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    goto :goto_5

    .line 585
    :pswitch_f
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    goto :goto_5

    .line 586
    :pswitch_12
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    goto :goto_5

    .line 581
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private static workoutCard(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 226
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 227
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 228
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 229
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    const/high16 v3, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 230
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 231
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->goalColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 235
    const v2, -0xedebe6

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseMapView;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/ImpulseMapView;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v2, p1, v6}, Lcom/isaigu/gymapp/ai/ImpulseMapView;->setMap(Lcom/isaigu/gymapp/ai/Workout;Z)V

    .line 238
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42380000    # 46.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0431\u043b\u043e\u043a\u0430 \u00b7 "

    const-string v3, " blocks \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->mapMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_ac
    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 245
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 248
    return-object v1

    .line 243
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->distinctExercises()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0443\u043f\u0440. \u00b7 "

    const-string v3, " ex. \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->exerciseBlocks()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0441\u0435\u0440\u0438\u0438 \u00b7 \u2248 "

    const-string v3, " sets \u00b7 \u2248 "

    .line 243
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Workout;->aiMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ac
.end method

.method static zoneName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041a\u043e\u0440\u0435\u043c"

    const-string v1, "Abs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_10
    return-object v0

    .line 94
    :cond_11
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v1, "Glutes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 95
    :cond_22
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0411\u0435\u0434\u0440\u0430"

    const-string v1, "Legs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 96
    :cond_33
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0413\u0440\u044a\u0431"

    const-string v1, "Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 97
    :cond_44
    const-string v0, "chest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0413\u044a\u0440\u0434\u0438"

    const-string v1, "Chest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 98
    :cond_55
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v1, "Arms"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 99
    :cond_66
    const-string v0, "shoulders"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u0420\u0430\u043c\u0435\u043d\u0435"

    const-string v1, "Shoulders"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 100
    :cond_77
    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u041a\u0430\u0440\u0434\u0438\u043e"

    const-string v1, "Cardio"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 101
    :cond_88
    const-string v0, "stretch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u0420\u0430\u0437\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v1, "Stretching"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 102
    :cond_9a
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v1, "All"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method
