.class Lcom/android/stk/StkAppService$ServiceHandler$2;
.super Ljava/lang/Object;
.source "StkAppService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkAppService$ServiceHandler;->launchOpenChannelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/stk/StkAppService$ServiceHandler;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService$ServiceHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler$2;->this$1:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1354
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "response id"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1355
    const-string v2, "choice"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1356
    const-string v2, "slot_id"

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler$2;->this$1:Lcom/android/stk/StkAppService$ServiceHandler;

    #getter for: Lcom/android/stk/StkAppService$ServiceHandler;->mCurrentSlotId:I
    invoke-static {v3}, Lcom/android/stk/StkAppService$ServiceHandler;->access$600(Lcom/android/stk/StkAppService$ServiceHandler;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1357
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler$2;->this$1:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1358
    .local v1, message:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1359
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1360
    iget-object v2, p0, Lcom/android/stk/StkAppService$ServiceHandler$2;->this$1:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1361
    return-void
.end method
