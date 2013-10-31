.class Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;
.super Lcom/android/internal/policy/impl/MyBaseAdapter;
.source "LockScreenWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnreadInfoListAdapter"
.end annotation


# instance fields
.field private flag:I

.field private ids:[I

.field private mUnReadInfoLogoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnReadInfoTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnReadInforDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private text:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

.field private unReadInfoNums:[I

.field private unReadInfoStr:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 707
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MyBaseAdapter;-><init>()V

    .line 684
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInforDataList:Ljava/util/ArrayList;

    .line 685
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInfoLogoList:Ljava/util/ArrayList;

    .line 686
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInfoTextList:Ljava/util/ArrayList;

    .line 687
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->ids:[I

    .line 693
    new-array v1, v5, [I

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadPhoneNum:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v2

    aput v2, v1, v6

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSMSNum:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v2

    aput v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadMailNum:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSchemeNum:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v2

    aput v2, v1, v8

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->unReadInfoNums:[I

    .line 696
    iput v6, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->flag:I

    .line 698
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104053a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104053b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104053c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104053d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->text:[Ljava/lang/String;

    .line 704
    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->unReadInfoStr:[Ljava/lang/String;

    .line 708
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInforDataList:Ljava/util/ArrayList;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadPhoneNum:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInforDataList:Ljava/util/ArrayList;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSMSNum:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInforDataList:Ljava/util/ArrayList;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadMailNum:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInforDataList:Ljava/util/ArrayList;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSchemeNum:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->unReadInfoStr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->text:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->unReadInfoNums:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    .line 718
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInforDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->flag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->flag:I

    .line 717
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 723
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->getAdapterData()V

    .line 724
    return-void

    .line 687
    :array_0
    .array-data 0x4
        0x92t 0x6t 0x8t 0x1t
        0x91t 0x6t 0x8t 0x1t
        0x90t 0x6t 0x8t 0x1t
        0x8dt 0x6t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getAdapterData()V
    .locals 3

    .prologue
    .line 763
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->flag:I

    packed-switch v1, :pswitch_data_0

    .line 768
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInfoLogoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 769
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInfoTextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 770
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInforDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInfoLogoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->ids:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInfoTextList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->unReadInfoStr:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    .end local v0           #i:I
    :cond_1
    :pswitch_0
    return-void

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 728
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->flag:I

    .line 729
    .local v0, count:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 730
    const/4 v0, 0x3

    .line 732
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 738
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 744
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 750
    if-nez p2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900d6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 754
    :cond_0
    const v2, 0x10203a2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 756
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInfoLogoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 757
    const v2, 0x10203a3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 758
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$UnreadInfoListAdapter;->mUnReadInfoTextList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    return-object p2
.end method
