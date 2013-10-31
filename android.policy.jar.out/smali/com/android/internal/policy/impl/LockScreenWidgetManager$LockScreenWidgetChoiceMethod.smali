.class Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;
.super Ljava/lang/Object;
.source "LockScreenWidgetManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockScreenWidgetChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockScreenWidgetChoiceMethod"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showWidgets([ZIZ)V
    .locals 12
    .parameter "isItemsSelect"
    .parameter "whichBg"
    .parameter "isFromeConstructor"

    .prologue
    const/4 v7, 0x4

    const/4 v11, 0x2

    const/4 v6, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 181
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mInfoBoxParentLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->widgetBackGroudIds:[I
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)[I

    move-result-object v5

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mWeatherParentLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->widgetBackGroudIds:[I
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)[I

    move-result-object v5

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMusicParentLayout:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->widgetBackGroudIds:[I
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)[I

    move-result-object v5

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 189
    new-array v2, v7, [Z

    fill-array-data v2, :array_0

    .line 190
    .local v2, isWidgetExist:[Z
    const/4 v0, 0x0

    .line 191
    .local v0, flag:I
    aget-boolean v4, p1, v9

    if-ne v4, v10, :cond_7

    .line 192
    if-nez p3, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v4, v9}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->sendBroadCastToStatusBar(Z)V

    .line 195
    :cond_0
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockScreen;->setIsHideStatuBar(Z)V

    .line 203
    :goto_0
    aget-boolean v4, p1, v11

    if-eqz v4, :cond_9

    .line 204
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 205
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierViewVisibility(I)V

    .line 212
    :cond_1
    :goto_1
    aget-boolean v4, p1, v6

    if-eqz v4, :cond_a

    aget-boolean v4, p1, v7

    if-nez v4, :cond_a

    .line 213
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$502(I)I

    .line 214
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I
    invoke-static {v4, v9}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$602(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I

    .line 239
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-nez v4, :cond_3

    .line 241
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v4

    const v6, 0x102037d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1202(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 244
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$1;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowWidgetHasExist:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    invoke-static {}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$500()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 254
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$600(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 270
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-static {}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$500()I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mShowWidgetHasExist:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1402(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I

    .line 274
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isItemsWidgetExist:[Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)[Z

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_13

    .line 275
    aget-boolean v4, p1, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isItemsWidgetExist:[Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)[Z

    move-result-object v5

    aget-boolean v5, v5, v1

    if-eq v4, v5, :cond_6

    .line 277
    move v0, v1

    .line 279
    sparse-switch v0, :sswitch_data_0

    .line 366
    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->isItemsWidgetExist:[Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1500(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)[Z

    move-result-object v4

    aget-boolean v5, p1, v1

    aput-boolean v5, v4, v1

    .line 274
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 197
    .end local v1           #i:I
    :cond_7
    if-nez p3, :cond_8

    .line 198
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->sendBroadCastToStatusBar(Z)V

    .line 200
    :cond_8
    invoke-static {v10}, Lcom/android/internal/policy/impl/LockScreen;->setIsHideStatuBar(Z)V

    goto/16 :goto_0

    .line 208
    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 209
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierViewVisibility(I)V

    goto/16 :goto_1

    .line 215
    :cond_a
    aget-boolean v4, p1, v6

    if-nez v4, :cond_c

    aget-boolean v4, p1, v7

    if-eqz v4, :cond_c

    .line 217
    invoke-static {v10}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$502(I)I

    .line 218
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadPhoneNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSMSNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadMailNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSchemeNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    if-nez v4, :cond_b

    .line 219
    invoke-static {v10}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1102(I)I

    .line 220
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I
    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$602(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I

    goto/16 :goto_2

    .line 222
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I
    invoke-static {v4, v10}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$602(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I

    goto/16 :goto_2

    .line 224
    :cond_c
    aget-boolean v4, p1, v6

    if-eqz v4, :cond_e

    aget-boolean v4, p1, v7

    if-eqz v4, :cond_e

    .line 225
    invoke-static {v11}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1102(I)I

    .line 226
    invoke-static {v11}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$502(I)I

    .line 227
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadPhoneNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSMSNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadMailNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mUnReadSchemeNum:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)I

    move-result v4

    if-nez v4, :cond_d

    .line 228
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I
    invoke-static {v4, v9}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$602(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I

    goto/16 :goto_2

    .line 230
    :cond_d
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I
    invoke-static {v4, v11}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$602(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I

    goto/16 :goto_2

    .line 232
    :cond_e
    aget-boolean v4, p1, v6

    if-nez v4, :cond_2

    aget-boolean v4, p1, v7

    if-nez v4, :cond_2

    .line 233
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1102(I)I

    .line 234
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$502(I)I

    .line 235
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWhichWidget:I
    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$602(Lcom/android/internal/policy/impl/LockScreenWidgetManager;I)I

    goto/16 :goto_2

    .line 256
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showOnlyWeatherWidget()V

    goto/16 :goto_3

    .line 259
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showOnlyInfoBoxWidget()V

    goto/16 :goto_3

    .line 262
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showWeatherAndInfoBoxWidget()V

    goto/16 :goto_3

    .line 265
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showNoWeatherAndInfoWidget()V

    goto/16 :goto_3

    .line 282
    .restart local v1       #i:I
    :sswitch_0
    aget-boolean v4, p1, v0

    if-eqz v4, :cond_f

    .line 283
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDigitalclock:Lcom/android/internal/widget/DigitalClock;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1600(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Lcom/android/internal/widget/DigitalClock;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/DigitalClock;->setVisibility(I)V

    .line 284
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mStatusView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 288
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 289
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v4

    if-le v4, v10, :cond_5

    .line 291
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$2;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_5

    .line 303
    :cond_f
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mDateTimeWidget:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1900(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 304
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v4

    if-ge v4, v11, :cond_5

    .line 305
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 306
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$3;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_5

    .line 320
    :sswitch_1
    aget-boolean v4, p1, v0

    if-eqz v4, :cond_12

    .line 321
    const-string v4, "LockScreenWidgetManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isItemsSelect["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-boolean v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapWidget:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 323
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapWidget:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v4

    const v6, 0x10203a4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapImageView:Landroid/widget/ImageView;
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2202(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 324
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_10

    .line 325
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080656

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2302(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 327
    :cond_10
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 329
    .local v3, mapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapWidget:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-nez v4, :cond_11

    .line 333
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v4

    const v6, 0x102037d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1202(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 335
    :cond_11
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v4

    if-le v4, v10, :cond_5

    .line 336
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$4;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_5

    .line 347
    .end local v3           #mapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_12
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mMapWidget:Landroid/view/View;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 349
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mViewFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/ViewFlipper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v4

    if-ge v4, v11, :cond_5

    .line 350
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 351
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$5;-><init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_5

    .line 380
    :cond_13
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #calls: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->refreshSlidingView()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2400(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    .line 381
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #calls: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustCanFlipper()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2500(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    .line 382
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #calls: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->adjustIsShoSwitchView()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2600(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V

    .line 414
    return-void

    .line 189
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
