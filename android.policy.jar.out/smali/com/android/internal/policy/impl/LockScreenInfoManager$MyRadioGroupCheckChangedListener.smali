.class Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRadioGroupCheckChangedListener"
.end annotation


# instance fields
.field private mWhichCheck:I

.field private radioButtonIds:[I

.field private radioButtons:[Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "witchChecked"

    .prologue
    const/4 v3, 0x4

    .line 1696
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1689
    new-array v1, v3, [Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->radioButtons:[Landroid/widget/RadioButton;

    .line 1690
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->radioButtonIds:[I

    .line 1697
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->mWhichCheck:I

    .line 1698
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1699
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->radioButtons:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->radioButtonIds:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    aput-object v1, v2, v0

    .line 1698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1701
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->radioButtons:[Landroid/widget/RadioButton;

    aget-object v1, v1, p3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1702
    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->keyguardWidgetBg:[I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[I

    move-result-object v2

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1703
    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWidgetBgAlphaTv:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/TextView;

    move-result-object v1

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->strKeyguardWidgetBg:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    return-void

    .line 1690
    :array_0
    .array-data 0x4
        0xbbt 0x3t 0x2t 0x1t
        0xbct 0x3t 0x2t 0x1t
        0xbdt 0x3t 0x2t 0x1t
        0xbet 0x3t 0x2t 0x1t
    .end array-data
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1708
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchOntouchEvent(I)V

    .line 1709
    packed-switch p2, :pswitch_data_0

    .line 1733
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->mWhichCheck:I

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2302(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I

    .line 1734
    return-void

    .line 1711
    :pswitch_0
    iput v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->mWhichCheck:I

    .line 1712
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->keyguardWidgetBg:[I
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1713
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWidgetBgAlphaTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->strKeyguardWidgetBg:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1716
    :pswitch_1
    iput v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->mWhichCheck:I

    .line 1717
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->keyguardWidgetBg:[I
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[I

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1718
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWidgetBgAlphaTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->strKeyguardWidgetBg:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1721
    :pswitch_2
    iput v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->mWhichCheck:I

    .line 1722
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->keyguardWidgetBg:[I
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1723
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWidgetBgAlphaTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->strKeyguardWidgetBg:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1726
    :pswitch_3
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->mWhichCheck:I

    .line 1727
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->keyguardWidgetBg:[I
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2900(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[I

    move-result-object v1

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1728
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWidgetBgAlphaTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->strKeyguardWidgetBg:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$3100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1709
    :pswitch_data_0
    .packed-switch 0x10203bb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
