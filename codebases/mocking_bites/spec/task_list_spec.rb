require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

  context "testing 'all' method" do
    it "returns all tasks" do
      task_list = TaskList.new
      task_1 = double :task
      task_2 = double :task
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all).to eq [task_1, task_2]
    end
    
    it "returns empty array when there are no tasks" do
      task_list = TaskList.new
      expect(task_list.all).to eq []
    end
  end

  it "returns false because all tasks are not done" do
    task_list = TaskList.new
    task_1 = double :task
    task_2 = double :task
    expect(task_1).to receive(:complete?).and_return(true)
    expect(task_2).to receive(:complete?).and_return(false)
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq false
  end

  it "returns true because all tasks are done" do
    task_list = TaskList.new
    task_1 = double :task
    task_2 = double :task
    expect(task_1).to receive(:complete?).and_return(true)
    expect(task_2).to receive(:complete?).and_return(true)
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq true
  end
  
  it "returns false because list is empty" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end
end
