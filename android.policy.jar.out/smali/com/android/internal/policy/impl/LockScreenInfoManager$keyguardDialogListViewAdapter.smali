.class Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;
.super Lcom/android/internal/policy/impl/MyBaseAdapter;
.source "LockScreenInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "keyguardDialogListViewAdapter"
.end annotation


# instance fields
.field choiceItem:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V
    .locals 4
    .parameter

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MyBaseAdapter;-><init>()V

    .line 1525
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040542

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x104053e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040540

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040544

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040543

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040546

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->choiceItem:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1536
    const/4 v0, 0x6

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1542
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1548
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1554
    if-nez p2, :cond_0

    .line 1555
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900cf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1558
    :cond_0
    const v2, 0x1020373

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1559
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->choiceItem:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1560
    const v2, 0x1020374

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1563
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v2

    aget-boolean v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1564
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$1;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;Landroid/widget/CheckBox;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1575
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;Landroid/widget/CheckBox;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    return-object p2
.end method
