//
//  ViewController.swift
//  Charts-Tutorial
//
//  Created by Sidhant Moola on 14/10/21.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var LineChartBox: LineChartView!
    @IBOutlet weak var PieChartBox: PieChartView!
    @IBOutlet weak var BarChartBox: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let data = [3, 5, 4, 6, 8, 7, 2, 9, 1]
        graphLineChart(dataArray: data)
        graphPieChart(dataArray: data)
        graphBarChart(dataArray: data)
    }

    func graphLineChart(dataArray: [Int]){
        //Make LineChartBox have width same as screen and height = half of width of screen
        LineChartBox.frame = CGRect(x: 0, y:0,
                                    width: self.view.frame.size.width,
                                    height: self.view.frame.size.width / 2)
        
        //Make LineChartBox centered horizontally
        //Make LineChartBox to be near the top of the screen
        LineChartBox.center.x = self.view.center.x
        LineChartBox.center.y = self.view.center.y - 240
        
        //Settings when LineChart has no data
        LineChartBox.noDataText = "No Data Available"
        LineChartBox.noDataTextColor = UIColor.black
        
        //Initialize Array that will eventually be displayed no graph
        var entries = [ChartDataEntry]()
        
        //For every element in the dataset
        //set the X and Y coordinates in a data chart entry
        //and add it to the enrty list
        for i in 0..<dataArray.count {
            let value = ChartDataEntry(x: Double(i), y: Double(dataArray[i]))
            entries.append(value)
        }
        
        //Use the entries object and a label string to make a LineChartData object
        let dataSet = LineChartDataSet(entries: entries, label: "Line Chart")
        
        //Customise the chart colors
        dataSet.colors = ChartColorTemplates.joyful()
        
        //Make object that will be added to the chart
        //and set it to the variable in the storyboard
        let data = LineChartData(dataSet: dataSet)
        LineChartBox.data = data
        
        //Add settings for the Chart box
        LineChartBox.chartDescription?.text = "Pi values"
        
        //Add animations
        LineChartBox.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
    }

    func graphPieChart(dataArray: [Int]){
        //Make LineChartBox have width same as screen and height = half of width of screen
        PieChartBox.frame = CGRect(x: 0, y:0,
                                    width: self.view.frame.size.width,
                                    height: self.view.frame.size.width / 2)
        
        //Make LineChartBox centered horizontally
        //Make LineChartBox to be near the top of the screen
        PieChartBox.center.x = self.view.center.x
        PieChartBox.center.y = self.view.center.y
        
        //Settings when LineChart has no data
        PieChartBox.noDataText = "No Data Available"
        PieChartBox.noDataTextColor = UIColor.black
        
        //Initialize Array that will eventually be displayed no graph
        var entries = [ChartDataEntry]()
        
        //For every element in the dataset
        //set the X and Y coordinates in a data chart entry
        //and add it to the enrty list
        for i in 0..<dataArray.count {
            let value = ChartDataEntry(x: Double(i), y: Double(dataArray[i]))
            entries.append(value)
        }
        
        //Use the entries object and a label string to make a LineChartData object
        let dataSet = PieChartDataSet(entries: entries, label: "Pie Chart")
        
        //Customise the chart colors
        dataSet.colors = ChartColorTemplates.joyful()
        
        //Make object that will be added to the chart
        //and set it to the variable in the storyboard
        let data = PieChartData(dataSet: dataSet)
        PieChartBox.data = data
        
        //Add settings for the Chart box
        PieChartBox.chartDescription?.text = "Pi values"
        
        //Add animations
        PieChartBox.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
    }
    
    func graphBarChart(dataArray: [Int]){
        //Make LineChartBox have width same as screen and height = half of width of screen
        BarChartBox.frame = CGRect(x: 0, y:0,
                                    width: self.view.frame.size.width,
                                    height: self.view.frame.size.width / 2)
        
        //Make LineChartBox centered horizontally
        //Make LineChartBox to be near the top of the screen
        BarChartBox.center.x = self.view.center.x
        BarChartBox.center.y = self.view.center.y + 240
        
        //Settings when LineChart has no data
        BarChartBox.noDataText = "No Data Available"
        BarChartBox.noDataTextColor = UIColor.black
        
        //Initialize Array that will eventually be displayed no graph
        var entries = [BarChartDataEntry]()
        
        //For every element in the dataset
        //set the X and Y coordinates in a data chart entry
        //and add it to the enrty list
        for i in 0..<dataArray.count {
            let value = BarChartDataEntry(x: Double(i), y: Double(dataArray[i]))
            entries.append(value)
        }
        
        //Use the entries object and a label string to make a LineChartData object
        let dataSet = BarChartDataSet(entries: entries, label: "Bar Chart")
        
        //Customise the chart colors
        dataSet.colors = ChartColorTemplates.joyful()
        
        //Make object that will be added to the chart
        //and set it to the variable in the storyboard
        let data = BarChartData(dataSet: dataSet)
        BarChartBox.data = data
        
        //Add settings for the Chart box
        BarChartBox.chartDescription?.text = "Pi values"
        
        //Add animations
        BarChartBox.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
    }
}

