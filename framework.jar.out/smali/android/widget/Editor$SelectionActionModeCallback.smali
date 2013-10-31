.class Landroid/widget/Editor$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 2869
    iput-object p1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2869
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;
    .locals 10
    .parameter "item"

    .prologue
    const v9, 0x1050038

    const/4 v8, 0x1

    .line 2873
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2874
    .local v2, outValue1:Landroid/util/TypedValue;
    const v4, 0x1080375

    .line 2875
    .local v4, resid:I
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101030e

    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 2877
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2880
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 2881
    .local v3, outValue2:Landroid/util/TypedValue;
    const/high16 v0, -0x100

    .line 2882
    .local v0, color:I
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010361

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_1

    .line 2885
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 2888
    :cond_1
    new-instance v5, Landroid/widget/TextImage;

    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;)V

    .line 2889
    .local v5, textImg:Landroid/widget/TextImage;
    invoke-virtual {v5}, Landroid/widget/TextImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2890
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 2891
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v1, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2894
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {v5, v1}, Landroid/widget/TextImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2895
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setMinimumWidth(I)V

    .line 2896
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setMinimumHeight(I)V

    .line 2897
    iget-object v6, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setTextSize(F)V

    .line 2898
    invoke-virtual {v5, v0}, Landroid/widget/TextImage;->setTextColor(I)V

    .line 2899
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setGravity(I)V

    .line 2900
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 2901
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setText(Ljava/lang/CharSequence;)V

    .line 2902
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setEnabled(Z)V

    .line 2903
    invoke-interface {p1}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setClickable(Z)V

    .line 2904
    invoke-virtual {v5, v4}, Landroid/widget/TextImage;->setBackgroundResource(I)V

    .line 2905
    new-instance v6, Landroid/widget/Editor$SelectionActionModeCallback$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/Editor$SelectionActionModeCallback$1;-><init>(Landroid/widget/Editor$SelectionActionModeCallback;Landroid/view/MenuItem;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2912
    return-object v5
.end method

.method private isSetActionModeTile()Z
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 3043
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3045
    const/4 v0, 0x1

    .line 3047
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 17
    .parameter "mode"
    .parameter "menu"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    .line 2918
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v13, v14}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 2921
    .local v12, styledAttributes:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1110036

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 2924
    .local v2, allowText:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x10403bf

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 2926
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2927
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 2929
    const/4 v11, 0x0

    .line 2930
    .local v11, selectAllIconId:I
    if-nez v2, :cond_0

    .line 2932
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 2950
    :cond_0
    const/4 v13, 0x0

    const v14, 0x102001f

    const/4 v15, 0x0

    const v16, 0x104000d

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    .line 2951
    .local v10, mSelectAllItem:Landroid/view/MenuItem;
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v13

    const/16 v14, 0x61

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x6

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2957
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v9

    .line 2958
    .local v9, mSelectAllActionView:Landroid/widget/TextImage;
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 2960
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->canCut()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2967
    const/4 v13, 0x0

    const v14, 0x1020020

    const/4 v15, 0x0

    const v16, 0x1040003

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    .line 2968
    .local v6, mCutItem:Landroid/view/MenuItem;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v13

    const/16 v14, 0x78

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x6

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2974
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v5

    .line 2975
    .local v5, mCutActionView:Landroid/widget/TextImage;
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 2978
    .end local v5           #mCutActionView:Landroid/widget/TextImage;
    .end local v6           #mCutItem:Landroid/view/MenuItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->canCopy()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2985
    const/4 v13, 0x0

    const v14, 0x1020021

    const/4 v15, 0x0

    const v16, 0x1040001

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 2986
    .local v4, mCopyItem:Landroid/view/MenuItem;
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v13

    const/16 v14, 0x63

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x6

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2992
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v3

    .line 2993
    .local v3, mCopyActionView:Landroid/widget/TextImage;
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 2996
    .end local v3           #mCopyActionView:Landroid/widget/TextImage;
    .end local v4           #mCopyItem:Landroid/view/MenuItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->canPaste()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3003
    const/4 v13, 0x0

    const v14, 0x1020022

    const/4 v15, 0x0

    const v16, 0x104000b

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    .line 3004
    .local v8, mPasteItem:Landroid/view/MenuItem;
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v13

    const/16 v14, 0x76

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x6

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3010
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/Editor$SelectionActionModeCallback;->initTextImage(Landroid/view/MenuItem;)Landroid/widget/TextImage;

    move-result-object v7

    .line 3011
    .local v7, mPasteActionView:Landroid/widget/TextImage;
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 3015
    .end local v7           #mPasteActionView:Landroid/widget/TextImage;
    .end local v8           #mPasteItem:Landroid/view/MenuItem;
    :cond_3
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 3017
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v13, v13, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v13, :cond_4

    .line 3018
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v13, v13, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 3020
    const/4 v13, 0x0

    .line 3029
    :goto_0
    return v13

    .line 3024
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 3025
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v13}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 3026
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3027
    const/4 v13, 0x1

    goto :goto_0

    .line 3029
    :cond_6
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3052
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3061
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v0, :cond_1

    .line 3062
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3064
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3067
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    .line 3068
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3071
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 3072
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 3035
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3036
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 3038
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
