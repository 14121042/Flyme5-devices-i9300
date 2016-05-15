.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 926
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 927
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 931
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 937
    .local v16, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 938
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    .line 939
    .local v17, "probablyDone":Z
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    if-eqz v17, :cond_5

    .line 942
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->clear()V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v23

    monitor-enter v23

    .line 944
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 946
    .local v21, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v20, v22, -0x1

    .local v20, "taskNdx":I
    :goto_1
    if-ltz v20, :cond_4

    .line 947
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    .line 950
    .local v19, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v22

    if-nez v22, :cond_3

    .line 954
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 946
    :cond_3
    add-int/lit8 v20, v20, -0x1

    goto :goto_1

    .line 939
    .end local v17    # "probablyDone":Z
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .end local v20    # "taskNdx":I
    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v22

    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 960
    .restart local v17    # "probablyDone":Z
    .restart local v20    # "taskNdx":I
    .restart local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_4
    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    .line 966
    .end local v20    # "taskNdx":I
    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 967
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v22, v24, v26

    if-eqz v22, :cond_6

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1f4

    add-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$302(Lcom/android/server/am/TaskPersister;J)J

    .line 975
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-eqz v22, :cond_7

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$302(Lcom/android/server/am/TaskPersister;J)J

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 982
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/am/TaskPersister;->removeExpiredTasksIfNeeded()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 987
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 988
    :catch_0
    move-exception v22

    goto :goto_2

    .line 960
    :catchall_1
    move-exception v22

    :try_start_6
    monitor-exit v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v22

    .line 993
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 995
    .local v13, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 999
    .local v14, "now":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v24

    cmp-long v22, v14, v24

    if-gez v22, :cond_9

    .line 1003
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    sub-long v24, v24, v14

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1006
    :goto_4
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    goto :goto_3

    .line 1010
    :cond_9
    monitor-exit v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1012
    instance-of v0, v13, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object v12, v13

    .line 1013
    check-cast v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 1014
    .local v12, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v9, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    .line 1015
    .local v9, "filename":Ljava/lang/String;
    iget-object v6, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 1017
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 1019
    .local v10, "imageFile":Ljava/io/FileOutputStream;
    :try_start_a
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v22, Ljava/io/File;

    sget-object v23, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1020
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .local v11, "imageFile":Ljava/io/FileOutputStream;
    :try_start_b
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1024
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v10, v11

    .line 1025
    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1010
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v14    # "now":J
    :catchall_2
    move-exception v22

    :try_start_c
    monitor-exit v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v22

    .line 1021
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v14    # "now":J
    :catch_1
    move-exception v7

    .line 1022
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_d
    const-string v22, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "saveImage: unable to save "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1024
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v22

    :goto_6
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v22

    .line 1026
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_a
    instance-of v0, v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1028
    const/16 v18, 0x0

    .line 1029
    .local v18, "stringWriter":Ljava/io/StringWriter;
    check-cast v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v0, v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    .line 1031
    .restart local v19    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v23

    monitor-enter v23

    .line 1032
    :try_start_e
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v22, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v22, :cond_b

    .line 1036
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-result-object v18

    .line 1041
    :cond_b
    :goto_7
    :try_start_10
    monitor-exit v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1042
    if-eqz v18, :cond_0

    .line 1044
    const/4 v8, 0x0

    .line 1045
    .local v8, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1047
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_11
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v22, Ljava/io/File;

    sget-object v23, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_task"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 1049
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_12
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 1050
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1051
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 1052
    invoke-virtual {v5, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_0

    .line 1053
    :catch_2
    move-exception v7

    move-object v4, v5

    .line 1054
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v7, "e":Ljava/io/IOException;
    :goto_8
    if-eqz v8, :cond_c

    .line 1055
    invoke-virtual {v4, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1057
    :cond_c
    const-string v22, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to open "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for persisting. "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1041
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v22

    :try_start_13
    monitor-exit v23
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v22

    .line 1053
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v8    # "file":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    goto :goto_8

    .line 1038
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v8    # "file":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v22

    goto/16 :goto_7

    .line 1037
    :catch_5
    move-exception v22

    goto/16 :goto_7

    .line 1024
    .end local v18    # "stringWriter":Ljava/io/StringWriter;
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_5
    move-exception v22

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 1021
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v7

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 1004
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_7
    move-exception v22

    goto/16 :goto_4
.end method
