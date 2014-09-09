.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    }
.end annotation


# instance fields
.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mClearSelectItem:Z

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentSlotId:I

.field private mDisplayText:Z

.field private mDisplayTextDlgIsVisibile:Z

.field private mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMainMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mMenuIsVisibile:Z

.field private mScreenIdle:Z

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field mTimeoutHandler:Landroid/os/Handler;

.field private responseNeeded:Z

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method public constructor <init>(Lcom/android/stk/StkAppService;Landroid/os/Looper;I)V
    .locals 4
    .parameter
    .parameter "looper"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 385
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    .line 386
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 327
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 328
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 329
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 330
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 331
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    .line 332
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 333
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 334
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 335
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 336
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    .line 337
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 338
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 339
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    .line 340
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    .line 341
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 342
    iput v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    .line 343
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mClearSelectItem:Z

    .line 344
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    .line 345
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    .line 349
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$ServiceHandler$1;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    .line 387
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    .line 388
    iput p3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    .line 389
    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkAppService$ServiceHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/stk/StkAppService$ServiceHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 326
    iget v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    return v0
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 603
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 604
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 605
    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    return-void
.end method

.method private checkAndUpdateCatService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 848
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Lcom/codeaurora/telephony/msim/MSimUiccController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimUiccController;->getInstance()Lcom/codeaurora/telephony/msim/MSimUiccController;

    move-result-object v1

    #setter for: Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;
    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->access$402(Lcom/android/stk/StkAppService;Lcom/codeaurora/telephony/msim/MSimUiccController;)Lcom/codeaurora/telephony/msim/MSimUiccController;

    .line 851
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mUiccController:Lcom/codeaurora/telephony/msim/MSimUiccController;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$400(Lcom/android/stk/StkAppService;)Lcom/codeaurora/telephony/msim/MSimUiccController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mUiccController is null when we need to send response"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    #calls: Lcom/android/stk/StkAppService;->updateCatService(I)V
    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->access$500(Lcom/android/stk/StkAppService;I)V

    .line 860
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    iget v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 863
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStkService is null for subscription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when we need to send response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 868
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    aput-object v1, v0, v2

    .line 869
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 872
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mStkService is null when we need to send response"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_2
    return-void
.end method

.method private checkForSetupEvent(ILandroid/os/Bundle;)V
    .locals 9
    .parameter "event"
    .parameter "args"

    .prologue
    .line 1097
    const/4 v2, 0x0

    .line 1098
    .local v2, eventPresent:Z
    const/4 v0, 0x0

    .line 1099
    .local v0, addedInfo:[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    iget-object v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v7, :cond_3

    .line 1104
    iget-object v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    .local v1, arr$:[I
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget v3, v1, v4

    .line 1105
    .local v3, i:I
    if-ne p1, v3, :cond_1

    .line 1106
    const/4 v2, 0x1

    .line 1112
    .end local v3           #i:I
    :cond_0
    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 1113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "exists in the EventList"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    packed-switch p1, :pswitch_data_0

    .line 1139
    .end local v1           #arr$:[I
    .end local v4           #i$:I
    .end local v6           #len$:I
    :goto_1
    :pswitch_0
    return-void

    .line 1104
    .restart local v1       #arr$:[I
    .restart local v3       #i:I
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1117
    .end local v3           #i:I
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendSetUpEventResponse(I[B)V

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;->removeSetUpEvent(I)V

    goto :goto_1

    .line 1121
    :pswitch_2
    iget-object v7, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 1123
    .local v5, language:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1128
    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendSetUpEventResponse(I[B)V

    goto :goto_1

    .line 1134
    .end local v5           #language:Ljava/lang/String;
    :cond_2
    const-string v7, " Event does not exist in the EventList"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1137
    .end local v1           #arr$:[I
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetupEventList is not received. Ignoring the event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1440
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1441
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1442
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 1443
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 1444
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    .line 1445
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 1446
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 1447
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 1448
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 1449
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1450
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1451
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1452
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    .line 1453
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    .line 1454
    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 1455
    iput v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    .line 1456
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mClearSelectItem:Z

    .line 1457
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    .line 1458
    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    .line 1459
    return-void
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter "userAction"

    .prologue
    const/4 v1, 0x0

    .line 1028
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method private getItemName(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    .line 1405
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 1406
    .local v2, menu:Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-object v3

    .line 1409
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 1410
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 1411
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleAlphaNotify(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1431
    const-string v0, "alpha_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha string received from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1434
    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1435
    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1436
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1437
    return-void
.end method

.method private handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;)V
    .locals 7
    .parameter "args"

    .prologue
    const/16 v6, 0x14d

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 477
    const-string v2, "card_status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 479
    .local v0, cardStatus:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CardStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    if-nez v0, :cond_1

    .line 481
    const-string v2, "CARD is ABSENT"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 484
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 485
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aput-object v4, v2, v3

    .line 486
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cleanUp()V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 489
    .local v1, state:Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string v2, "refresh_result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icc Refresh Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v2, v5, :cond_3

    .line 495
    :cond_2
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 496
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 499
    :cond_3
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v2, v5, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 502
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 503
    iput-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 17
    .parameter "cmdMsg"

    .prologue
    .line 645
    if-nez p1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 650
    const/4 v13, 0x1

    .line 652
    .local v13, waitForUsersResponse:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    sget-object v14, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 817
    :cond_2
    :goto_1
    if-nez v13, :cond_0

    .line 818
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-eqz v14, :cond_e

    .line 819
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    goto :goto_0

    .line 655
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v12

    .line 656
    .local v12, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-boolean v14, v12, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    .line 657
    iget-boolean v13, v12, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 658
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 659
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 673
    :goto_2
    iget-boolean v14, v12, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-nez v14, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->isTopOfStack()Z

    move-result v14

    if-nez v14, :cond_5

    .line 674
    new-instance v2, Landroid/content/Intent;

    const-string v14, "org.codeaurora.intent.action.stk.check_screen_idle"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v2, StkIntent:Landroid/content/Intent;
    const-string v14, "SCREEN_STATUS_REQUEST"

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v14, v2}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    .line 677
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    goto :goto_1

    .line 660
    .end local v2           #StkIntent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v14, :cond_4

    .line 661
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 664
    :cond_4
    const-string v14, ""

    iput-object v14, v12, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 679
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchTextDialog()V

    goto :goto_1

    .line 683
    .end local v12           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_1

    .line 687
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->removeMenu()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 690
    const-string v14, "Uninstall App"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 692
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 693
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v14, v15}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    .line 698
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 699
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-eqz v14, :cond_2

    .line 700
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_1

    .line 695
    :cond_6
    const-string v14, "Install App"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v14, v15}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    goto :goto_3

    .line 705
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchInputActivity()V

    goto/16 :goto_1

    .line 708
    :pswitch_4
    const/4 v13, 0x0

    .line 709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 710
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v7

    .line 712
    .local v7, idleModeText:Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v8, Landroid/content/Intent;

    const-string v14, "org.codeaurora.intent.action.stk.check_screen_idle"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v8, idleStkIntent:Landroid/content/Intent;
    if-nez v7, :cond_7

    .line 714
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchIdleText()V

    .line 715
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 717
    :cond_7
    const-string v14, "set up idle mode"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v14, v8}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 726
    .end local v7           #idleModeText:Lcom/android/internal/telephony/cat/TextMessage;
    .end local v8           #idleStkIntent:Landroid/content/Intent;
    :pswitch_5
    const/4 v13, 0x0

    .line 727
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage()V

    .line 731
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_1

    .line 734
    :pswitch_6
    const/4 v13, 0x0

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage()V

    .line 737
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->isRefreshResetOrInit()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 738
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v14}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v14

    const/16 v15, 0x14d

    invoke-virtual {v14, v15}, Landroid/app/NotificationManager;->cancel(I)V

    .line 739
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 740
    const-string v14, "Clean idle mode text due to refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 744
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v3

    .line 745
    .local v3, alphaId:Lcom/android/internal/telephony/cat/TextMessage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    sget-object v15, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    if-ne v14, v15, :cond_9

    if-eqz v3, :cond_8

    iget-object v14, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v14, :cond_8

    iget-object v14, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_9

    .line 750
    :cond_8
    const-string v14, "Browser mode is: launch if not already launched and user confirmation is not currently needed.\nsupressing confirmation dialogue and confirming silently..."

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 754
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 755
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendResponse(IIZ)V

    goto/16 :goto_1

    .line 757
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/stk/StkAppService$ServiceHandler;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 761
    .end local v3           #alphaId:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v14

    iget-object v11, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 762
    .local v11, mesg:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v11, :cond_b

    iget-object v14, v11, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v14, :cond_a

    iget-object v14, v11, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_b

    .line 763
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v14}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050002

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 765
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SET_UP_CALL mesg.text "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/stk/StkAppService$ServiceHandler;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 769
    .end local v11           #mesg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchToneDialog()V

    goto/16 :goto_1

    .line 772
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchOpenChannelDialog()V

    goto/16 :goto_1

    .line 777
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v10

    .line 779
    .local v10, m:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v10, :cond_c

    iget-object v14, v10, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v14, :cond_c

    .line 780
    sget-object v14, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    .line 795
    :cond_c
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage()V

    goto/16 :goto_1

    .line 782
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v14}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050018

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_4

    .line 785
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v14}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050017

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_4

    .line 788
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v14}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050016

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_4

    .line 798
    .end local v10           #m:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 799
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    if-nez v14, :cond_2

    .line 803
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v4, v14, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    .local v4, arr$:[I
    array-length v9, v4

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_5
    if-ge v6, v9, :cond_2

    aget v5, v4, v6

    .line 804
    .local v5, i:I
    const/4 v14, 0x5

    if-ne v5, v14, :cond_d

    .line 805
    const-string v14, " IDLE_SCREEN_AVAILABLE_EVENT present in List"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    new-instance v2, Landroid/content/Intent;

    const-string v14, "org.codeaurora.intent.action.stk.check_screen_idle"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .restart local v2       #StkIntent:Landroid/content/Intent;
    const-string v14, "SCREEN_STATUS_REQUEST"

    const/4 v15, 0x1

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v14, v2}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 803
    .end local v2           #StkIntent:Landroid/content/Intent;
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 821
    .end local v4           #arr$:[I
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v9           #len$:I
    :cond_e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 780
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .locals 11
    .parameter "args"

    .prologue
    .line 879
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v9, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->checkAndUpdateCatService()V

    .line 885
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 888
    .local v6, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v9, "help"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 889
    .local v3, helpRequired:Z
    const/4 v2, 0x0

    .line 891
    .local v2, confirmed:Z
    const-string v9, "response id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1002
    :pswitch_0
    const-string v9, "Unknown result id"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :pswitch_1
    const-string v9, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    const-string v9, "menu selection"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 895
    .local v5, menuSelection:I
    sget-object v9, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sparse-switch v9, :sswitch_data_0

    .line 1005
    .end local v5           #menuSelection:I
    :cond_1
    :goto_1
    const-string v9, "slot_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1006
    .local v7, slotId:I
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v9}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v9

    aget-object v9, v9, v7

    if-eqz v9, :cond_b

    .line 1008
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CmdResponse sent on"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v9}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-interface {v9, v6}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 898
    .end local v7           #slotId:I
    .restart local v5       #menuSelection:I
    :sswitch_0
    invoke-direct {p0, v5}, Lcom/android/stk/StkAppService$ServiceHandler;->getItemName(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 899
    if-eqz v3, :cond_2

    .line 900
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 905
    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    .line 906
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->startTimeOut()V

    goto :goto_1

    .line 902
    :cond_2
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    :cond_3
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 911
    .end local v5           #menuSelection:I
    :pswitch_2
    const-string v9, "RES_ID_INPUT"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    const-string v9, "input"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 913
    .local v4, input:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 914
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    if-eqz v1, :cond_4

    iget-boolean v9, v1, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v9, :cond_4

    .line 915
    const-string v9, "YES"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 917
    .local v8, yesNoSelection:Z
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 919
    .end local v8           #yesNoSelection:Z
    :cond_4
    if-eqz v3, :cond_5

    .line 920
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    .line 922
    :cond_5
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 924
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 922
    :cond_6
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 929
    .end local v1           #cmdInput:Lcom/android/internal/telephony/cat/Input;
    .end local v4           #input:Ljava/lang/String;
    :pswitch_3
    const-string v9, "RES_ID_CONFIRM"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    const-string v9, "confirm"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 931
    sget-object v9, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v10, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sparse-switch v9, :sswitch_data_1

    goto/16 :goto_1

    .line 933
    :sswitch_1
    if-eqz v2, :cond_8

    .line 934
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_5
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    :cond_7
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_5

    .line 937
    :cond_8
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 941
    :sswitch_2
    if-eqz v2, :cond_9

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_6
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 943
    if-eqz v2, :cond_1

    .line 944
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 945
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    goto/16 :goto_1

    .line 941
    :cond_9
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_6

    .line 949
    :sswitch_3
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 950
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 951
    if-eqz v2, :cond_1

    .line 952
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v9}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 958
    :pswitch_4
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 961
    :pswitch_5
    const-string v9, "RES_ID_BACKWARD"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 965
    :pswitch_6
    const-string v9, "RES_ID_END_SESSION"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 969
    :pswitch_7
    const-string v9, "RES_ID_TIMEOUT"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    sget-object v10, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v10

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v9, :cond_a

    .line 977
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 979
    :cond_a
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 983
    :pswitch_8
    const-string v9, "choice"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 984
    .local v0, choice:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User Choice="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    packed-switch v0, :pswitch_data_1

    .line 995
    :goto_7
    iget-object v9, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    sget-object v10, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 997
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_1

    .line 987
    :pswitch_9
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 988
    const/4 v2, 0x1

    .line 989
    goto :goto_7

    .line 991
    :pswitch_a
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_7

    .line 1012
    .end local v0           #choice:I
    .restart local v7       #slotId:I
    :cond_b
    const-string v9, "CmdResponse on wrong slotid"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 891
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 895
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch

    .line 931
    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 985
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private handleDelayedCmd()V
    .locals 2

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    .line 590
    .local v0, cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    iget v1, v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 599
    .end local v0           #cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 592
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 595
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleScreenStatus(Landroid/os/Bundle;)V
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 509
    const-string v1, "screen status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    .line 513
    iget-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    if-eqz v1, :cond_0

    .line 514
    const-string v1, "Need to send IDLE SCREEN Available event to SIM"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->checkForSetupEvent(ILandroid/os/Bundle;)V

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchIdleText()V

    .line 520
    :cond_1
    iget-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    if-eqz v1, :cond_2

    .line 521
    iget-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mScreenIdle:Z

    if-nez v1, :cond_3

    .line 522
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendScreenBusyResponse()V

    .line 526
    :goto_0
    iput-boolean v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    .line 527
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 530
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_2

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.stk.check_screen_idle"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v0, StkIntent:Landroid/content/Intent;
    const-string v1, "SCREEN_STATUS_REQUEST"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    .end local v0           #StkIntent:Landroid/content/Intent;
    :cond_2
    return-void

    .line 524
    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchTextDialog()V

    goto :goto_0
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 608
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 609
    :cond_0
    iput-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    .line 610
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 613
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 616
    :cond_1
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    if-eqz v0, :cond_2

    .line 617
    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 620
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    .line 625
    :goto_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    if-eqz v0, :cond_3

    .line 626
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser:Z

    .line 627
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 629
    :cond_3
    return-void

    .line 622
    :cond_4
    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 569
    sget-object v0, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 584
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 581
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isTopOfStack()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 633
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 635
    .local v1, mAcivityManager:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, currentPackageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 638
    const-string v2, "com.android.stk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 641
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x400

    .line 1207
    if-nez p1, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1216
    const-string v0, "no url data provided by proactive command. launching browser with stk default URL ... "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    const-string v0, "persist.radio.stk.default_url"

    const-string v1, "http://www.google.com"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    :goto_1
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1226
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching browser with url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 1234
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1236
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1237
    sget-object v0, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1249
    :goto_3
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1254
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1255
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1221
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch browser command has attached url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    goto :goto_1

    .line 1229
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1230
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching browser with modified url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1239
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 1242
    :pswitch_1
    const/high16 v0, 0x800

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 1245
    :pswitch_2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1196
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1197
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1201
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1202
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1203
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1204
    return-void
.end method

.method private launchEventMessage()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->launchEventMessage(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 1159
    return-void
.end method

.method private launchEventMessage(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1162
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    new-instance v2, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1166
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1168
    const/high16 v1, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1169
    const v0, 0x102000b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1171
    const v1, 0x1020006

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1173
    iget-object v4, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 1174
    iget-object v4, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1184
    :goto_1
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 1185
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1189
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 1190
    const/16 v0, 0x50

    invoke-virtual {v2, v0, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 1191
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1176
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchIdleText()V
    .locals 8

    .prologue
    const v7, 0x10805b4

    const/16 v6, 0x14d

    const/4 v5, 0x0

    .line 1259
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1262
    :cond_0
    const-string v0, "mCurrent.getTextMessage or msg.text is NULL"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1293
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1269
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1271
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1272
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1274
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1275
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1276
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1279
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mIdleModeTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 1280
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1282
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 1283
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1291
    :goto_1
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/stk/StkAppService;->access$200(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1285
    :cond_4
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1288
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private launchInputActivity()V
    .locals 3

    .prologue
    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1058
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1060
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1061
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1062
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 1033
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const/high16 v0, 0x1400

    .line 1037
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 1039
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1041
    const-string v2, "STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    :goto_0
    const-string v2, "slot_id"

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1051
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1052
    return-void

    .line 1044
    :cond_0
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1046
    const-string v2, "MENU"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1047
    const-string v2, "STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchOpenChannelDialog()V
    .locals 3

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1322
    if-nez v0, :cond_0

    .line 1323
    const-string v0, "msg is null, return here"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1372
    :goto_0
    return-void

    .line 1327
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1328
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1329
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1332
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/stk/StkAppService$ServiceHandler$3;

    invoke-direct {v2, p0}, Lcom/android/stk/StkAppService$ServiceHandler$3;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/stk/StkAppService$ServiceHandler$2;

    invoke-direct {v2, p0}, Lcom/android/stk/StkAppService$ServiceHandler$2;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1366
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1368
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1371
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private launchTextDialog()V
    .locals 3

    .prologue
    .line 1065
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1066
    const v1, 0x74808000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1073
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1075
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1076
    return-void
.end method

.method private launchToneDialog()V
    .locals 4

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1300
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toneMsg.text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Starting ToneDialog activity with default message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1309
    :goto_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v3, Lcom/android/stk/ToneDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1310
    const/high16 v2, 0x5080

    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService$ServiceHandler;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1314
    const-string v2, "TONE"

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1315
    const-string v2, "TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1316
    const-string v0, "slot_id"

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1317
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1318
    return-void

    .line 1306
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toneMsg.text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Starting ToneDialog Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1419
    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 1427
    :goto_0
    return v0

    .line 1423
    :catch_0
    move-exception v1

    .line 1424
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1427
    goto :goto_0
.end method

.method private removeSetUpEvent(I)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    if-eqz v1, :cond_0

    .line 1148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 1150
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 1155
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1148
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendResponse(IIZ)V
    .locals 4
    .parameter "resId"
    .parameter "slotId"
    .parameter "confirm"

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 558
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    const-string v2, "slot_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string v2, "confirm"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResponse mCurrentSlotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 565
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    return-void
.end method

.method private sendScreenBusyResponse()V
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 554
    :goto_0
    return-void

    .line 542
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 543
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v1, "SCREEN_BUSY"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 545
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->checkAndUpdateCatService()V

    .line 546
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 548
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    .line 549
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    goto :goto_0

    .line 552
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private sendSetUpEventResponse(I[B)V
    .locals 3
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSetUpEventResponse: event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 1082
    const-string v1, "mCurrentSetupEventCmd is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    :goto_0
    return-void

    .line 1086
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1088
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1089
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1091
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->checkAndUpdateCatService()V

    .line 1093
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v1}, Lcom/android/stk/StkAppService;->access$300(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 368
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 370
    return-void
.end method


# virtual methods
.method public getMainMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 393
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 395
    .local v1, opcode:I
    packed-switch v1, :pswitch_data_0

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 397
    :pswitch_0
    const-string v2, "OP_LAUNCH_APP"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_0

    .line 402
    invoke-direct {p0, v6}, Lcom/android/stk/StkAppService$ServiceHandler;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 407
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->cancelTimeOut()V

    .line 417
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    if-nez v2, :cond_2

    .line 421
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 422
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 424
    :cond_2
    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, p0, v5, v2}, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    .end local v0           #cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    if-eqz v2, :cond_3

    .line 431
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCmdResponse(Landroid/os/Bundle;)V

    .line 434
    :cond_3
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 435
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->callDelayedMsg()V

    .line 440
    :goto_1
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->responseNeeded:Z

    goto :goto_0

    .line 437
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    goto :goto_1

    .line 443
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    if-nez v2, :cond_5

    .line 444
    iput-boolean v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdInProgress:Z

    .line 445
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleSessionEnd()V

    goto :goto_0

    .line 447
    :cond_5
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v3, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, v6}, Lcom/android/stk/StkAppService$ServiceHandler$DelayedCmd;-><init>(Lcom/android/stk/StkAppService$ServiceHandler;ILcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    :pswitch_4
    const-string v2, "OP_BOOT_COMPLETED"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$100(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I

    invoke-static {v2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 457
    :pswitch_5
    invoke-direct {p0}, Lcom/android/stk/StkAppService$ServiceHandler;->handleDelayedCmd()V

    goto/16 :goto_0

    .line 460
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleAlphaNotify(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 463
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleScreenStatus(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 466
    :pswitch_8
    const-string v2, "Locale Changed"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    const/4 v3, 0x7

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v3, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->checkForSetupEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 470
    :pswitch_9
    const-string v2, "Card/Icc Status change received"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method indicateMenuVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 830
    iput-boolean p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mMenuIsVisibile:Z

    .line 831
    return-void
.end method

.method setDisplayTextDlgVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 837
    iput-boolean p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->mDisplayTextDlgIsVisibile:Z

    .line 838
    return-void
.end method
